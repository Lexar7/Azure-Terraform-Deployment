variable "location" {}

variable "admin_username" {
  type        = string
  description = "Administrator user name for virtual machine"
}

variable "admin_password" {
  type        = string
  description = "Password must meet Azure complexity requirements"
}

variable "vm_names" {
  default = ["vmCalidad", "vmProduccion", "vmDesarrollo"]
}

variable "vm_nics" {
  default = ["nicCalidad", "nicProduccion", "nicDesarrollo"]
}

variable "vm_osdisk" {
  default = ["myosdiskCalidad", "myosdiskProduccion", "myosdiskDesarrollo"]
}

variable "vm_computer_name" {
  default = ["calidad", "produccion", "desarrollo"]
}


variable "prefix" {
  type    = string
  default = "my"
}

variable "tags" {
  type = map

  default = {
    Environment = "Terraform GS"
    Dept        = "Engineering"
  }
}

variable "sku" {
  default = {
    westus2 = "16.04-LTS"
    eastus  = "18.04-LTS"
  }
}
