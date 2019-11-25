resource "azurerm_network_security_group" "network_security_group" {
  name                = "default-nsg"
  location            = var.location
  resource_group_name = var.resource_group_name
}