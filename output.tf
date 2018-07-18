# Note:
# openstack_compute_instance_v2 wraps access_ip_v6 in [] to make it easier to use as an url
# The replace hack strips this away to we can use access_ip_v6 as an ansible_host

variable "search"  { default = "/\\[(.*)\\]/" }

data "template_file" "ansible_host_v6" {
    template = "$${name} ansible_host=$${ip} ansible_ssh_user=$${user}"
    count = "${length(var.gold_images)*var.count}"
    vars {
        ip = "${replace(openstack_compute_instance_v2.basic.*.access_ip_v6[count.index], var.search, "$1")}"
        name = "${openstack_compute_instance_v2.basic.*.name[count.index]}"
        user = "${lookup(var.image_users, openstack_compute_instance_v2.basic.*.image_name[count.index], "unknown")}"
    }
}

data "template_file" "ansible_host_v4" {
    template = "$${name} ansible_host=$${ip} ansible_ssh_user=$${user}"
    count = "${length(var.gold_images)*var.count}"
    vars {
        ip = "${openstack_compute_instance_v2.basic.*.access_ip_v4[count.index]}"
        name = "${openstack_compute_instance_v2.basic.*.name[count.index]}"
        user = "${lookup(var.image_users, openstack_compute_instance_v2.basic.*.image_name[count.index], "unknown")}"
    }
}

data "template_file" "ansible_inventory_v6" { 
  template = "[$${name}]\n$${hosts}\n"
  vars {
    name = "${var.name}-${var.role}"
    hosts = "${join("\n",data.template_file.ansible_host_v6.*.rendered)}"
  }
}

data "template_file" "ansible_inventory_v4" {
  template = "[$${name}]\n$${hosts}\n"
  vars {
    name = "${var.name}-${var.role}"
    hosts = "${join("\n",data.template_file.ansible_host_v4.*.rendered)}"
  }
}

output "inventoryi_v6" {
  value = "${data.template_file.ansible_inventory_v6.rendered}"
}

output "inventory_v4" {
  value = "${data.template_file.ansible_inventory_v4.rendered}"
}

