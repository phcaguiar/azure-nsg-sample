data "azurerm_subnet" "internal_subnet" {
  name                 = var.internal_subnet_name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.network_resource_group_name
}

data "azurerm_subnet" "external_subnet" {
  name                 = var.external_subnet_name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.network_resource_group_name
}

data "azurerm_subnet" "internal_aks_subnet" {
  name                 = var.internal_aks_subnet_name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.network_resource_group_name
}

data "azurerm_subnet" "external_aks_subnet" {
  name                 = var.external_aks_subnet_name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.network_resource_group_name
}

data "azurerm_subnet" "database_subnet" {
  name                 = var.database_subnet_name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.network_resource_group_name
}