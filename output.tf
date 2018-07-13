# Note:
# openstack_compute_instance_v2 wraps access_ip_v6 in [] to make it easier to use as an url
# The replace hack strips this away to we can use access_ip_v6 as an ansible_host

variable "search"  { default = "/\\[(.*)\\]/" }
variable "replace" { default = "$1" }

data "template_file" "ansible_host" {
    template = "$${name} ansible_host=$${ip} ansible_ssh_user=$${user}"
    count = "${length(var.gold_images)*var.count}"
    vars {
        ip = "${replace(openstack_compute_instance_v2.basic.*.access_ip_v6[count.index], var.search, var.replace)}"
        name = "${openstack_compute_instance_v2.basic.*.name[count.index]}"
        user = "${var.gold_images[openstack_compute_instance_v2.basic.*.image_name[count.index]]}"
    }
}

data "template_file" "ansible_inventory" { 
  template = "[$${name}]\n$${hosts}\n"
  vars {
    name = "${var.name}-${var.role}"
    hosts = "${join("\n",data.template_file.ansible_host.*.rendered)}"
  }
}

output "inventory" {
  value = "${data.template_file.ansible_inventory.rendered}"
}

