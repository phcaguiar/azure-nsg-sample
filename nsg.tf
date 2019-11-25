resource "azurerm_network_security_group" "baseline_network_security_group" {
  name                = var.network_security_group_name
  location            = var.location
  resource_group_name = var.network_resource_group_name
}