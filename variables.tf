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
    "GOLD CentOS 7",
    "GOLD CentOS 8",
    "GOLD Debian 9",
    "GOLD Debian 10",
    "GOLD Ubuntu 18.04 LTS",
    "GOLD Ubuntu 20.04 LTS",
    "GOLD Fedora 32",
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
    "GOLD CentOS 7"           = "centos7"
    "GOLD CentOS 8"           = "centos8"
    "GOLD Debian 9"           = "debian9"
    "GOLD Debian 10"          = "debian10"
    "GOLD Fedora 32"          = "fedora32"
    "GOLD Ubuntu 18.04 LTS"   = "ubuntu1804"
    "GOLD Ubuntu 20.04 LTS"   = "ubuntu2004"
    "Outdated (CentOS 7)"     = "centos"
    "Outdated (CentOS 8)"     = "centos"
    "Outdated (Debian 9)"     = "debian"
    "Outdated (Debian 10)"    = "debian"
    "Outdated (Fedora 32)"    = "fedora"
    "Outdated (Ubuntu 18.04)" = "ubuntu"
    "Outdated (Ubuntu 20.04)" = "ubuntu"
    "vGPU CentOS 7"           = "centos"
    "vGPU Ubuntu 20.04 LTS"   = "ubuntu"
  }
}

variable "image_users" {
  type = map(string)
  default = {
    "GOLD CentOS 7"           = "centos"
    "GOLD CentOS 8"           = "centos"
    "GOLD Debian 9"           = "debian"
    "GOLD Debian 10"          = "debian"
    "GOLD Fedora 32"          = "fedora"
    "GOLD Ubuntu 18.04 LTS"   = "ubuntu"
    "GOLD Ubuntu 20.04 LTS"   = "ubuntu"
    "Outdated (CentOS 7)"     = "centos"
    "Outdated (CentOS 8)"     = "centos"
    "Outdated (Debian 9)"     = "debian"
    "Outdated (Debian 10)"    = "debian"
    "Outdated (Fedora 32)"    = "fedora"
    "Outdated (Ubuntu 18.04)" = "ubuntu"
    "Outdated (Ubuntu 20.04)" = "ubuntu"
    "vGPU CentOS 7"           = "centos"
    "vGPU Ubuntu 20.04 LTS"   = "ubuntu"
  }
}
