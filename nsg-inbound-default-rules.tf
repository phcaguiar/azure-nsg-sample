resource "azurerm_network_security_rule" "network_security_rule_custom_deny_all_inbound" {
  name                        = "CustomDenyAllInBound"
  priority                    = 4096
  direction                   = "Inbound"
  access                      = "Deny"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = "FinancialProducts-Common-CE-STG"
  network_security_group_name = azurerm_network_security_group.network_security_group.name
}

resource "azurerm_network_security_rule" "network_security_rule_custom_allow_all_azure_loadbalancer_inbound" {
  name                        = "CustomAllowAzureLoadBalancerAllInBound"
  priority                    = 4095
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "AzureLoadBalancer"
  destination_address_prefix  = "VirtualNetwork"
  resource_group_name         = "FinancialProducts-Common-CE-STG"
  network_security_group_name = azurerm_network_security_group.network_security_group.name
}

resource "azurerm_network_security_rule" "network_security_rule_custom_allow_all_vpn_inbound" {
  name                        = "CustomAllowAllVPNInBound"
  priority                    = 4000
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefixes     = ["172.26.40.0/24", "172.16.252.0/24", "172.16.211.0/24"]
  destination_address_prefix  = "*"
  resource_group_name         = "FinancialProducts-Common-CE-STG"
  network_security_group_name = azurerm_network_security_group.network_security_group.name
}

resource "azurerm_network_security_rule" "network_security_rule_custom_allow_all_stone_office_inbound" {
  name                        = "CustomAllowAllStoneOfficeInBound"
  priority                    = 4001
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefixes     = ["172.26.18.0/23"]
  destination_address_prefix  = "*"
  resource_group_name         = "FinancialProducts-Common-CE-STG"
  network_security_group_name = azurerm_network_security_group.network_security_group.name
  depends_on = [azurerm_network_security_rule.network_security_rule_custom_allow_all_vpn_inbound]
}