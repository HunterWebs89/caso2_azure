variable "location" {
  type = string
  description = "Región de Azure donde crearemos la infraestructura"
  default = "East US 2"
}

variable "vm_size_master" {
  type = string
  description = "Tamaño de la máquina virtual (master)"
  default = "Standard_DS2_v2" # 7 GB, 2 CPU 
}

variable "vm_size_nfs" {
  type = string
  description = "Tamaño de la máquina virtual (nfs)"
  default = "Standard_B2s" # 4 GB, 2 CPU 
}

variable "vm_size_worker" {
  type = string
  description = "Tamaño de la máquina virtual (worker)"
  default = "Standard_B2s" # 4 GB, 2 CPU 
}