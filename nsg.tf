resource "azurerm_network_security_group" "network_security_group" {
  name                = "example-nsg"
  location            = "centralus"
  resource_group_name = "FinancialProducts-Common-CE-STG"
}