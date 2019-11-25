variable "subscription_id" {
  description = "Azure Subscription ID"
}

variable "location" {
  description = "Azure Location"
}

variable "virtual_network_name" {
  description = "Virtual Network Name"
}

variable "network_resource_group_name" {
  description = "Network Resource Group Name"
}

variable "network_security_group_name" {
  description = "Network Security Group Name"
}

variable "managednetworks_inbound" {
  description = "Managed Networks"
  type        = list
}

variable "private_datacenters_networks" {
  description = "Private Datacenters Networks"
  type        = list
}

variable "internal_subnet_name" {
  description = "Internal Subnet Name"
}

variable "external_subnet_name" {
  description = "External Subnet Name"
}

variable "internal_aks_subnet_name" {
  description = "Internal AKS Subnet Name"
}

variable "external_aks_subnet_name" {
  description = "External AKS Subnet Name"
}

variable "database_subnet_name" {
  description = "Database Subnet Name"
}
