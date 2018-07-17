# Variables
variable "region" { }
variable "role" { default = "base" }
variable "name" { default = "imagetest" }
variable "count" { default = 1 }
variable "allow_ssh_from_v6" { type = "list" }
variable "ssh_public_key" { default = "~/.ssh/id_rsa.pub" }
variable "flavor_name" { default = "m1.small" }
variable "gold_images" { 
  type = "map" 
  default = {
    "GOLD CentOS 6" = "centos"
    "GOLD CentOS 7" = "centos"
    "GOLD Debian 9" = "debian"
    "GOLD Ubuntu 16.04 LTS" = "ubuntu"
    "GOLD Ubuntu 18.04 LTS" = "ubuntu"
  }
}
variable "network" { default = "IPv6" }
variable "az" { default = "default-1" }
