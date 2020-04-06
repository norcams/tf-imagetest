# Variables
variable "region" {
}

variable "role" {
  default = "base"
}

variable "name" {
  default = "imagetest"
}

variable "ncount" {
  default = 1
}

variable "allow_ssh_from_v6" {
  type    = list(string)
  default = []
}

variable "allow_ssh_from_v4" {
  type    = list(string)
  default = []
}

variable "ssh_public_key" {
  default = "~/.ssh/id_rsa.pub"
}

variable "flavor_name" {
  default = "m1.small"
}

variable "gold_images" {
  type = list(string)
  default = [
    "GOLD CentOS 6",
    "GOLD CentOS 7",
    "GOLD Debian 9",
    "GOLD Ubuntu 16.04 LTS",
    "GOLD Ubuntu 18.04 LTS",
    "GOLD Ubuntu 19.04",
    "GOLD Fedora 31",
  ]
}

variable "network" {
  default = "IPv6"
}

variable "volume_size" {
  default = 10
}

variable "volume_type" {
  default = "rbd"
}

variable "az" {
  default = "default-1"
}

variable "metadata" {
  type    = map(string)
  default = {}
}

variable "image_names" {
  type = map(string)
  default = {
    "GOLD CentOS 6"         = "centos6"
    "GOLD CentOS 7"         = "centos7"
    "GOLD Debian 9"         = "debian9"
    "GOLD Fedora 31"        = "fedora31"
    "GOLD Ubuntu 16.04 LTS" = "ubuntu1604"
    "GOLD Ubuntu 18.04 LTS" = "ubuntu1804"
    "GOLD Ubuntu 19.04"     = "ubuntu1904"
    "Outdated (CentOS)"     = "centos"
    "Outdated (Debian)"     = "debian"
    "Outdated (Fedora)"     = "fedora"
    "Outdated (Ubuntu)"     = "ubuntu"
  }
}

variable "image_users" {
  type = map(string)
  default = {
    "GOLD CentOS 6"         = "centos"
    "GOLD CentOS 7"         = "centos"
    "GOLD Debian 9"         = "debian"
    "GOLD Fedora 30"        = "fedora"
    "GOLD Ubuntu 16.04 LTS" = "ubuntu"
    "GOLD Ubuntu 18.04 LTS" = "ubuntu"
    "GOLD Ubuntu 19.04"     = "ubuntu"
    "Outdated (CentOS)"     = "centos"
    "Outdated (Debian)"     = "debian"
    "Outdated (Fedora)"     = "fedora"
    "Outdated (Ubuntu)"     = "ubuntu"
  }
}
