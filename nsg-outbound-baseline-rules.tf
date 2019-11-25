resource "azurerm_network_security_rule" "network_security_rule_custom_deny_all_outbound" {
  name                        = "Custom_Deny_All_OutBound"
  priority                    = 4096
  direction                   = "Outbound"
  access                      = "Deny"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.network_resource_group_name
  network_security_group_name = azurerm_network_security_group.baseline_network_security_group.name
}

resource "azurerm_network_security_rule" "network_security_rule_custom_allow_internet_outbound" {
  name                        = "Custom_Allow_Internet_OutBound"
  priority                    = 4095
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "VirtualNetwork"
  destination_address_prefix  = "Internet"
  resource_group_name         = var.network_resource_group_name
  network_security_group_name = azurerm_network_security_group.baseline_network_security_group.name
}

resource "azurerm_network_security_rule" "network_security_rule_custom_allow_private_datacenters_outbound" {
  name                          = "Custom_Allow_Private_Datacenters_OutBound"
  priority                      = 4094
  direction                     = "Outbound"
  access                        = "Allow"
  protocol                      = "*"
  source_port_range             = "*"
  destination_port_range        = "*"
  source_address_prefix         = "VirtualNetwork"
  destination_address_prefixes  = ["var.private_datacenters_networks"]
  resource_group_name           = var.network_resource_group_name
  network_security_group_name   = azurerm_network_security_group.baseline_network_security_group.name
}