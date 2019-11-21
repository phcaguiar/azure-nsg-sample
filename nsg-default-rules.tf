resource "random_integer" "default_priority" {
  min     = 4001
  max     = 4096
}

resource "azurerm_network_security_rule" "network_security_rule_custom_deny_all_inbound" {
  name                        = "CustomDenyAllInBound"
  priority                    = random_integer.default_priority.result
  direction                   = "Inbound"
  access                      = "Deny"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "VirtualNetwork"
  destination_address_prefix  = "VirtualNetwork"
  resource_group_name         = "FinancialProducts-Common-CE-STG"
  network_security_group_name = azurerm_network_security_group.network_security_group.name
}

resource "azurerm_network_security_rule" "network_security_rule_custom_deny_all_outbound" {
  name                        = "CustomDenyAllOutBound"
  priority                    = random_integer.default_priority.result
  direction                   = "Outbound"
  access                      = "Deny"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "VirtualNetwork"
  destination_address_prefix  = "*"
  resource_group_name         = "FinancialProducts-Common-CE-STG"
  network_security_group_name = azurerm_network_security_group.network_security_group.name
}

resource "azurerm_network_security_rule" "network_security_rule_custom_allow_subnet_inbound" {
  name                        = "CustomAllowSubnetInBound"
  priority                    = random_integer.default_priority.result
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = data.azurerm_subnet.internal_stg.address_prefix
  destination_address_prefix  = data.azurerm_subnet.internal_stg.address_prefix
  resource_group_name         = "FinancialProducts-Common-CE-STG"
  network_security_group_name = azurerm_network_security_group.network_security_group.name
}

resource "azurerm_network_security_rule" "network_security_rule_custom_allow_managed_ports_to_sre" {
  name                        = "CustomAllowManagedPortsToSRE"
  priority                    = random_integer.default_priority.result
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "TCP"
  source_port_range           = "*"
  destination_port_ranges     = ["22", "3389", "5985", "5986", "80", "443"]
  source_address_prefix       = "172.26.18.0/23"
  destination_address_prefix  = "VirtualNetwork"
  resource_group_name         = "FinancialProducts-Common-CE-STG"
  network_security_group_name = azurerm_network_security_group.network_security_group.name
}

resource "azurerm_network_security_rule" "network_security_rule_custom_allow_azure_loadbalancer_to_virtualnetwork" {
  name                        = "CustomAllowAzureLoadBalanceToVirtualNetwork"
  priority                    = random_integer.default_priority.result
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "TCP"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "AzureLoadBalancer"
  destination_address_prefix  = "VirtualNetwork"
  resource_group_name         = "FinancialProducts-Common-CE-STG"
  network_security_group_name = azurerm_network_security_group.network_security_group.name
}