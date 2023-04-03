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
    "GOLD Debian 10",
    "GOLD Debian 11",
#    "GOLD Ubuntu 18.04 LTS",
    "GOLD Ubuntu 20.04 LTS",
    "GOLD Ubuntu 22.04 LTS",
    "GOLD Fedora 37",
    "GOLD CentOS Stream 8",
    "GOLD CentOS Stream 9",
    "GOLD Alma Linux 8",
    "GOLD Alma Linux 9",
    "GOLD Rocky Linux 8",
    "GOLD Rocky Linux 9"
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
    "GOLD Fedora 36"                = "fedora36"
    "GOLD Fedora 37"                = "fedora37"
    "GOLD Ubuntu 18.04 LTS"         = "ubuntu1804"
    "GOLD Ubuntu 20.04 LTS"         = "ubuntu2004"
    "GOLD Ubuntu 22.04 LTS"         = "ubuntu2204"
    "GOLD Ubuntu 21.10"             = "ubuntu2110"
    "GOLD CentOS Stream 8"          = "centosstream8"
    "GOLD CentOS Stream 9"          = "centosstream9"
    "GOLD Alma Linux 8"             = "almalinux8"
    "GOLD Alma Linux 9"             = "almalinux9"
    "GOLD Rocky Linux 8"            = "rockylinux8"
    "GOLD Rocky Linux 9"            = "rockylinux9"
    "Outdated (CentOS 7)"           = "centos7"
    "Outdated (CentOS 8)"           = "centos8"
    "Outdated (Debian 9)"           = "debian9"
    "Outdated (Debian 10)"          = "debian10"
    "Outdated (Debian 11)"          = "debian11"
    "Outdated (Fedora 36)"          = "fedora36"
    "Outdated (Fedora 37)"          = "fedora37"
    "Outdated (Ubuntu 18.04)"       = "ubuntu_1804"
    "Outdated (Ubuntu 20.04)"       = "ubuntu_2004"
    "Outdated (Ubuntu 22.04)"       = "ubuntu_2204"
    "Outdated (Ubuntu 21.10)"       = "ubuntu_2110"
    "Outdated (CentOS Stream 8)"    = "centosstream8"
    "Outdated (CentOS Stream 9)"    = "centosstream9"
    "Outdated (Alma Linux 8)"       = "almalinux8"
    "Outdated (Alma Linux 9)"       = "almalinux9"
    "Outdated (Rocky Linux 8)"      = "rocky8"
    "Outdated (Rocky Linux 9)"      = "rocky9"
    "vGPU CentOS 7"                 = "centos7"
    "vGPU Alma Linux 8"             = "almalinux8"
    "vGPU Ubuntu 20.04 LTS"         = "ubuntu_2004"
    "vGPU Ubuntu 22.04 LTS"         = "ubuntu_2204"
    "Outdated vGPU (CentOS 7)"      = "centos7"
    "Outdated vGPU (Alma Linux 8)"  = "almalinux8"
    "Outdated vGPU (Ubuntu 20.04)"  = "ubuntu_2004"
    "Outdated vGPU (Ubuntu 22.04)"  = "ubuntu_2204"
    "Outdated vGPU (Ubuntu 21.10)"  = "ubuntu_2110"
  }
}

variable "image_users" {
  type = map(string)
  default = {
    "GOLD CentOS 7"                 = "centos"
    "GOLD Debian 9"                 = "debian"
    "GOLD Debian 10"                = "debian"
    "GOLD Debian 11"                = "debian"
    "GOLD Fedora 36"                = "fedora"
    "GOLD Fedora 37"                = "fedora"
    "GOLD Ubuntu 18.04 LTS"         = "ubuntu"
    "GOLD Ubuntu 20.04 LTS"         = "ubuntu"
    "GOLD Ubuntu 22.04 LTS"         = "ubuntu"
    "GOLD Ubuntu 21.10"             = "ubuntu"
    "GOLD CentOS Stream 8"          = "cloud-user"
    "GOLD CentOS Stream 9"          = "cloud-user"
    "GOLD Alma Linux 8"             = "almalinux"
    "GOLD Alma Linux 9"             = "almalinux"
    "GOLD Rocky Linux 8"            = "rocky"
    "GOLD Rocky Linux 9"            = "rocky"
    "Outdated (CentOS 7)"           = "centos"
    "Outdated (CentOS 8)"           = "centos"
    "Outdated (Debian 9)"           = "debian"
    "Outdated (Debian 10)"          = "debian"
    "Outdated (Debian 11)"          = "debian"
    "Outdated (Fedora 35)"          = "fedora"
    "Outdated (Fedora 36)"          = "fedora"
    "Outdated (Ubuntu 18.04)"       = "ubuntu"
    "Outdated (Ubuntu 20.04)"       = "ubuntu"
    "Outdated (Ubuntu 22.04)"       = "ubuntu"
    "Outdated (Ubuntu 21.10)"       = "ubuntu"
    "Outdated (CentOS Stream 8)"    = "centos"
    "Outdated (CentOS Stream 9)"    = "centos"
    "Outdated (Alma Linux 8)"       = "almalinux"
    "Outdated (Alma Linux 9)"       = "almalinux"
    "Outdated (Rocky Linux 8)"      = "rocky"
    "Outdated (Rocky Linux 9)"      = "rocky"
    "vGPU CentOS 7"                 = "centos"
    "vGPU CentOS 8"                 = "centos"
    "vGPU Ubuntu 20.04 LTS"         = "ubuntu"
    "vGPU Ubuntu 22.04 LTS"         = "ubuntu"
    "Outdated vGPU (Alma Linux 8)"  = "almalinux"
    "Outdated vGPU (CentOS 7)"      = "centos"
    "Outdated vGPU (Ubuntu 20.04)"  = "ubuntu"
    "Outdated vGPU (Ubuntu 22.04)"  = "ubuntu"
    "Outdated vGPU (Ubuntu 21.10)"  = "ubuntu"
  }
}
