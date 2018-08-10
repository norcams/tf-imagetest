# Variables
variable "region" { }
variable "role" { default = "base" }
variable "name" { default = "imagetest" }
variable "count" { default = 1 }
variable "allow_ssh_from_v6" { type = "list" default = [] }
variable "allow_ssh_from_v4" { type = "list" default = [] }
variable "ssh_public_key" { default = "~/.ssh/id_rsa.pub" }
variable "flavor_name" { default = "m1.small" }
variable "gold_images" { 
  type = "list" 
  default = [
    "GOLD CentOS 6",
    "GOLD CentOS 7",
    "GOLD Debian 9",
    "GOLD Ubuntu 16.04 LTS",
    "GOLD Ubuntu 18.04 LTS",
    "GOLD Fedora 27",
    "GOLD Fedora 28"
  ]
}
variable "network" { default = "IPv6" }
variable "volume_size" { default = 10 }
variable "az" { default = "default-1" }
variable "metadata" { type = "map" default = {}}
variable "image_names" {
  type = "map"
  default = {
    "GOLD CentOS 6" = "centos6"
    "GOLD CentOS 7" = "centos7"
    "GOLD Debian 9" = "debian9"
    "GOLD Fedora 27" = "fedora27"
    "GOLD Fedora 28" = "fedora28"
    "GOLD Ubuntu 16.04 LTS" = "ubuntu1604"
    "GOLD Ubuntu 18.04 LTS" = "ubuntu1804"
    "Outdated (CentOS)" = "centos"
    "Outdated (Debian)" = "debian"
    "Outdated (Fedora)" = "fedora"
    "Outdated (Ubuntu)" = "ubuntu"
  }
}
variable "image_users" {
  type = "map"
  default = {
    "GOLD CentOS 6" = "centos"
    "GOLD CentOS 7" = "centos"
    "GOLD Debian 9" = "debian"
    "GOLD Fedora 27" = "fedora"
    "GOLD Fedora 28" = "fedora"
    "GOLD Ubuntu 16.04 LTS" = "ubuntu"
    "GOLD Ubuntu 18.04 LTS" = "ubuntu"
    "Outdated (CentOS)" = "centos"
    "Outdated (Debian)" = "debian"
    "Outdated (Fedora)" = "fedora"
    "Outdated (Ubuntu)" = "ubuntu"
  }
}
