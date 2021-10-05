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
    "GOLD Debian 11",
    "GOLD Ubuntu 18.04 LTS",
    "GOLD Ubuntu 20.04 LTS",
    "GOLD Fedora 34",
    "GOLD CentOS Stream 8",
    "GOLD Alma Linux 8",
    "GOLD Rocky Linux 8"
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
    "GOLD CentOS 7"                 = "centos7"
    "GOLD CentOS 8"                 = "centos8"
    "GOLD Debian 9"                 = "debian9"
    "GOLD Debian 10"                = "debian10"
    "GOLD Debian 11"                = "debian11"
    "GOLD Fedora 32"                = "fedora32"
    "GOLD Ubuntu 18.04 LTS"         = "ubuntu1804"
    "GOLD Ubuntu 20.04 LTS"         = "ubuntu2004"
    "GOLD CentOS Stream 8"          = "centosstream8"
    "GOLD Alma Linux 8"             = "almalinux8"
    "GOLD Rocky Linux 8"            = "rockylinux8"
    "Outdated (CentOS 7)"           = "centos7"
    "Outdated (CentOS 8)"           = "centos8"
    "Outdated (Debian 9)"           = "debian9"
    "Outdated (Debian 10)"          = "debian10"
    "Outdated (Debian 11)"          = "debian11"
    "Outdated (Fedora 34)"          = "fedora34"
    "Outdated (Ubuntu 18.04)"       = "ubuntu_1804"
    "Outdated (Ubuntu 20.04)"       = "ubuntu_2004"
    "Outdated (CentOS Stream 8)"    = "centosstream8"
    "Outdated (Alma Linux 8)"       = "almalinux8"
    "Outdated (Rocky Linux 8)"      = "rocky8"
    "vGPU CentOS 7"                 = "centos7"
    "vGPU CentOS 8"                 = "centos8"
    "vGPU Ubuntu 20.04 LTS"         = "ubuntu_2004"
    "Outdated vGPU (CentOS 8)"      = "centos7"
    "Outdated vGPU (CentOS 7)"      = "centos8"
    "Outdated vGPU (Ubuntu 20.04)"  = "ubuntu_2004"
  }
}

variable "image_users" {
  type = map(string)
  default = {
    "GOLD CentOS 7"                 = "centos"
    "GOLD CentOS 8"                 = "centos"
    "GOLD Debian 9"                 = "debian"
    "GOLD Debian 10"                = "debian"
    "GOLD Debian 11"                = "debian"
    "GOLD Fedora 34"                = "fedora"
    "GOLD Ubuntu 18.04 LTS"         = "ubuntu"
    "GOLD Ubuntu 20.04 LTS"         = "ubuntu"
    "GOLD CentOS Stream 8"          = "centos"
    "GOLD Alma Linux 8"             = "almalinux"
    "GOLD Rocky Linux 8"            = "rocky"
    "Outdated (CentOS 7)"           = "centos"
    "Outdated (CentOS 8)"           = "centos"
    "Outdated (Debian 9)"           = "debian"
    "Outdated (Debian 10)"          = "debian"
    "Outdated (Fedora 32)"          = "fedora"
    "Outdated (Ubuntu 18.04)"       = "ubuntu"
    "Outdated (Ubuntu 20.04)"       = "ubuntu"
    "Outdated (CentOS Stream 8)"    = "centos"
    "Outdated (Alma Linux 8)"       = "almalinux"
    "Outdated (Rocky Linux 8)"      = "rocky"
    "vGPU CentOS 7"                 = "centos"
    "vGPU CentOS 8"                 = "centos"
    "vGPU Ubuntu 20.04 LTS"         = "ubuntu"
    "Outdated vGPU (CentOS 8)"      = "centos"
    "Outdated vGPU (CentOS 7)"      = "centos"
    "Outdated vGPU (Ubuntu 20.04)"  = "ubuntu"
  }
}
