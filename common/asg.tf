resource "azurerm_application_security_group" "application_security_group" {
  name                = "default-asg"
  location            = var.location
  resource_group_name = var.resource_group_name
}