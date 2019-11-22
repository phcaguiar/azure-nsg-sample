resource "azurerm_network_security_rule" "network_security_rule_custom_deny_all_outbound" {
  name                        = "CustomDenyAllOutBound"
  priority                    = 4096
  direction                   = "Outbound"
  access                      = "Deny"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = "FinancialProducts-Common-CE-STG"
  network_security_group_name = azurerm_network_security_group.network_security_group.name
}