variable "resource_group_name" {
  type        = string
  description = "RG name in azure"
}

variable "resource_group_location" {
  type        = string
  description = "RG location in azure"
}

variable "virtual_network_name" {
  type        = string
  description = "vnet name in Azure"
}

variable "subnet_name" {
  type        = string
  description = "Subnet name in Azure"
}

variable "public_ip_name" {
  type        = string
  description = "Public Ip name in Azure"
}
variable "network_security_group_name" {
  type        = string
  description = "NSG name is Azure"
}
variable "network_interface_name" {
  type        = string
  description = "NIC name in Azure"
}
variable "linux_virtual_machine_name" {
  type        = string
  description = "Linux VM name in Azure"
}
