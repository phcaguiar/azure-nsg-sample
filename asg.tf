resource "azurerm_application_security_group" "application_security_group" {
  name                = "default-asg"
  location            = "centralus"
  resource_group_name = "FinancialProducts-Common-CE-STG"
}