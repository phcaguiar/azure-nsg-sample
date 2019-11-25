# resource "azurerm_network_security_rule" "network_security_rule_custom_deny_all_outbound" {
#   name                        = "CustomDenyAllOutBound"
#   priority                    = 100
#   direction                   = "Outbound"
#   access                      = "Deny"
#   protocol                    = "*"
#   source_port_range           = "*"
#   destination_port_range      = "*"
#   source_address_prefix       = data.azurerm_subnet.internal_stg.address_prefix
#   destination_address_prefix  = "*"
#   resource_group_name         = "FinancialProducts-Common-CE-STG"
#   network_security_group_name = azurerm_network_security_group.network_security_group.name
#   source_application_security_group_ids = [azurerm_application_security_group.application_security_group.id]
# }

# resource "azurerm_network_security_rule" "network_security_rule_custom_allow_internet_outbound" {
#   name                        = "CustomDenyAllOutBound"
#   priority                    = 101
#   direction                   = "Inbound"
#   access                      = "Allow"
#   protocol                    = "*"
#   source_port_range           = "*"
#   destination_port_range      = "*"
#   source_address_prefix       = data.azurerm_subnet.internal_stg.address_prefix
#   destination_address_prefix  = "*"
#   resource_group_name         = "FinancialProducts-Common-CE-STG"
#   network_security_group_name = azurerm_network_security_group.network_security_group.name
# }