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

variable "allow_icmp_from_v6" {
  type    = list(string)
  default = ["::/0"]
}

variable "allow_icmp_from_v4" {
  type    = list(string)
  default = ["0.0.0.0/0"]
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
    "GOLD Debian 11",
    "GOLD Debian 12",
    "GOLD Ubuntu 20.04 LTS",
    "GOLD Ubuntu 22.04 LTS",
    "GOLD Ubuntu 24.04 LTS",
    "GOLD Fedora 40",
    "GOLD Fedora 41",
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
    "GOLD Debian 11"                = "debian11"
    "GOLD Debian 12"                = "debian12"
    "GOLD Fedora 40"                = "fedora40"
    "GOLD Fedora 41"                = "fedora41"
    "GOLD Ubuntu 20.04 LTS"         = "ubuntu2004"
    "GOLD Ubuntu 22.04 LTS"         = "ubuntu2204"
    "GOLD Ubuntu 24.04 LTS"         = "ubuntu2404"
    "GOLD CentOS Stream 9"          = "centosstream9"
    "GOLD Alma Linux 8"             = "almalinux8"
    "GOLD Alma Linux 9"             = "almalinux9"
    "GOLD Rocky Linux 8"            = "rockylinux8"
    "GOLD Rocky Linux 9"            = "rockylinux9"
    "Outdated (Debian 11)"          = "debian11"
    "Outdated (Debian 12)"          = "debian12"
    "Outdated (Fedora 40)"          = "fedora40"
    "Outdated (Fedora 41)"          = "fedora41"
    "Outdated (Ubuntu 20.04)"       = "ubuntu_2004"
    "Outdated (Ubuntu 22.04)"       = "ubuntu_2204"
    "Outdated (Ubuntu 24.04)"       = "ubuntu_2404"
    "Outdated (CentOS Stream 9)"    = "centosstream9"
    "Outdated (Alma Linux 8)"       = "almalinux8"
    "Outdated (Alma Linux 9)"       = "almalinux9"
    "Outdated (Rocky Linux 8)"      = "rocky8"
    "Outdated (Rocky Linux 9)"      = "rocky9"
    "vGPU Alma Linux 8"             = "almalinux8_nv_vgpu"
    "vGPU Alma Linux 9"             = "almalinux9_nv_vgpu"
    "vGPU Ubuntu 20.04 LTS"         = "ubuntu_2004_nv_vgpu"
    "vGPU Ubuntu 22.04 LTS"         = "ubuntu_2204_nv_vgpu"
    "Outdated vGPU (Alma Linux 8)"  = "almalinux8_nv_vgpu"
    "Outdated vGPU (Alma Linux 9)"  = "almalinux9_nv_vgpu"
    "Outdated vGPU (Ubuntu 20.04)"  = "ubuntu_2004_nv_vgpu"
    "Outdated vGPU (Ubuntu 22.04)"  = "ubuntu_2204_nv_vgpu"
  }
}

variable "image_users" {
  type = map(string)
  default = {
    "GOLD Debian 11"                = "debian"
    "GOLD Debian 12"                = "debian"
    "GOLD Fedora 40"                = "fedora"
    "GOLD Fedora 41"                = "fedora"
    "GOLD Ubuntu 20.04 LTS"         = "ubuntu"
    "GOLD Ubuntu 22.04 LTS"         = "ubuntu"
    "GOLD Ubuntu 24.04 LTS"         = "ubuntu"
    "GOLD CentOS Stream 9"          = "cloud-user"
    "GOLD Alma Linux 8"             = "almalinux"
    "GOLD Alma Linux 9"             = "almalinux"
    "GOLD Rocky Linux 8"            = "rocky"
    "GOLD Rocky Linux 9"            = "rocky"
    "Outdated (Debian 11)"          = "debian"
    "Outdated (Debian 112)"          = "debian"
    "Outdated (Fedora 40)"          = "fedora"
    "Outdated (Fedora 41)"          = "fedora"
    "Outdated (Ubuntu 20.04)"       = "ubuntu"
    "Outdated (Ubuntu 22.04)"       = "ubuntu"
    "Outdated (Ubuntu 24.04)"       = "ubuntu"
    "Outdated (CentOS Stream 9)"    = "cloud-user"
    "Outdated (Alma Linux 8)"       = "almalinux"
    "Outdated (Alma Linux 9)"       = "almalinux"
    "Outdated (Rocky Linux 8)"      = "rocky"
    "Outdated (Rocky Linux 9)"      = "rocky"
    "vGPU Alma Linux 8"		    = "almalinux"
    "vGPU Alma Linux 9"             = "almalinux"
    "vGPU Ubuntu 20.04 LTS"         = "ubuntu"
    "vGPU Ubuntu 22.04 LTS"         = "ubuntu"
    "vGPU Ubuntu 24.04 LTS"         = "ubuntu"
    "Outdated vGPU (Alma Linux 8)"  = "almalinux"
    "Outdated vGPU (Alma Linux 9)"  = "almalinux"
    "Outdated vGPU (Ubuntu 20.04)"  = "ubuntu"
    "Outdated vGPU (Ubuntu 22.04)"  = "ubuntu"
    "Outdated vGPU (Ubuntu 24.04)"  = "ubuntu"
  }
}
