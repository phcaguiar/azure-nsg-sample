resource "azurerm_network_security_rule" "network_security_rule_custom_deny_all_inbound" {
  name                        = "Custom_Deny_All_InBound"
  priority                    = 4096
  direction                   = "Inbound"
  access                      = "Deny"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.network_resource_group_name
  network_security_group_name = azurerm_network_security_group.baseline_network_security_group.name
}

resource "azurerm_network_security_rule" "network_security_rule_custom_allow_all_azure_loadbalancer_inbound" {
  name                        = "Custom_Allow_AzureLoadBalancer_All_InBound"
  priority                    = 4095
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "AzureLoadBalancer"
  destination_address_prefix  = "VirtualNetwork"
  resource_group_name         = var.network_resource_group_name
  network_security_group_name = azurerm_network_security_group.baseline_network_security_group.name
}

resource "azurerm_network_security_rule" "network_security_rule_custom_allow_all_managednetworks_inbound" {
  name                        = "Custom_Allow_All_ManagedNetworks_InBound"
  priority                    = 4094
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefixes     = ["var.managednetworks_inbound"]
  destination_address_prefix  = "*"
  resource_group_name         = var.network_resource_group_name
  network_security_group_name = azurerm_network_security_group.baseline_network_security_group.name
}