provider "openstack" {
}

## SSH key
resource "openstack_compute_keypair_v2" "keypair" {
  name       = "${terraform.workspace}-${var.name}-${var.role}"
  region     = var.region
  public_key = file(var.ssh_public_key)
}

## Security group
resource "openstack_networking_secgroup_v2" "instance_access" {
  region      = var.region
  name        = "${terraform.workspace}-${var.name}-${var.role}"
  description = "Security groups for allowing SSH and ICMP access"
}

# Allow ssh from IPv4 net
resource "openstack_networking_secgroup_rule_v2" "rule_ssh_access_ipv4" {
  count             = length(var.allow_ssh_from_v4)
  region            = var.region
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = element(var.allow_ssh_from_v4, count.index)
  security_group_id = openstack_networking_secgroup_v2.instance_access.id
}

# Allow ssh from IPv6 net
resource "openstack_networking_secgroup_rule_v2" "rule_ssh_access_ipv6" {
  count             = length(var.allow_ssh_from_v6)
  region            = var.region
  direction         = "ingress"
  ethertype         = "IPv6"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = element(var.allow_ssh_from_v6, count.index)
  security_group_id = openstack_networking_secgroup_v2.instance_access.id
}

# Allow icmp from IPv4 net
resource "openstack_networking_secgroup_rule_v2" "rule_icmp_access_ipv4" {
  count             = length(var.allow_ssh_from_v4)
  region            = var.region
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "icmp"
  remote_ip_prefix  = element(var.allow_ssh_from_v4, count.index)
  security_group_id = openstack_networking_secgroup_v2.instance_access.id
}

# Allow icmp from IPv6 net
resource "openstack_networking_secgroup_rule_v2" "rule_icmp_access_ipv6" {
  count             = length(var.allow_ssh_from_v6)
  region            = var.region
  direction         = "ingress"
  ethertype         = "IPv6"
  protocol          = "icmp"
  remote_ip_prefix  = element(var.allow_ssh_from_v6, count.index)
  security_group_id = openstack_networking_secgroup_v2.instance_access.id
}

## Instance
resource "openstack_compute_instance_v2" "basic" {
  count = length(var.gold_images) * var.ncount
  name = "${var.region}-${var.name}-${count.index}-${lookup(
    var.image_names,
    element(var.gold_images, count.index),
    "unknown",
  )}"
  image_name        = element(var.gold_images, count.index)
  region            = var.region
  flavor_name       = var.flavor_name
  key_pair          = "${terraform.workspace}-${var.name}-${var.role}"
  availability_zone = "${var.region}-${var.az}"
  security_groups   = ["default", "${terraform.workspace}-${var.name}-${var.role}"]

  network {
    name = var.network
  }
  metadata   = var.metadata
  depends_on = [openstack_networking_secgroup_v2.instance_access]
}

## Volume
resource "openstack_blockstorage_volume_v2" "volume" {
  count       = length(var.gold_images) * var.ncount
  region      = var.region
  name        = "${var.region}-${var.name}-${count.index}"
  size        = var.volume_size
  volume_type = var.volume_type
}

## Attach volume
resource "openstack_compute_volume_attach_v2" "volumes" {
  count       = length(var.gold_images) * var.ncount
  region      = var.region
  instance_id = element(openstack_compute_instance_v2.basic.*.id, count.index)
  volume_id   = element(openstack_blockstorage_volume_v2.volume.*.id, count.index)
}
