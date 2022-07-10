variable "resource_group_name" {
  default = "sgd_caso2_rgp"
}

variable "location_name" {
  default = "East US 2"
}

variable "network_name" {
  default = "vnet1"
}

variable "subnet_name" {
  default = "subnet1"
}

variable "vms" {
  description = "VMs"
  type        = list(string)
  default     = ["master", "worker", "nfs"]
}

variable "sizes" {
  description = "Sizes de las VMs"
  type        = list(string)
  default     = ["Standard_D2_v2", "Standard_B2s", "Standard_B2s"]
}