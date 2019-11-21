resource "random_integer" "custom_priority" {
  min     = 100
  max     = 4000
}

resource "azurerm_network_security_rule" "network_security_rule_custom_allow_port_8080" {
  name                        = "CustomAllowHTTPPort8080"
  priority                    = random_integer.custom_priority.result
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "TCP"
  source_port_range           = "*"
  destination_port_range      = "8080"
  source_address_prefix       = "172.26.18.0/23"
  destination_address_prefix  = azurerm_lb.lb.private_ip_address
  resource_group_name         = "FinancialProducts-Common-CE-STG"
  network_security_group_name = azurerm_network_security_group.network_security_group.name
}