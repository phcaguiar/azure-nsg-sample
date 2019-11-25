resource "azurerm_subnet_network_security_group_association" "nsg_internal_subnet_association" {
  subnet_id                 = data.azurerm_subnet.internal_subnet.id
  network_security_group_id = azurerm_network_security_group.baseline_network_security_group.id
}

resource "azurerm_subnet_network_security_group_association" "nsg_external_subnet_association" {
  subnet_id                 = data.azurerm_subnet.external_subnet.id
  network_security_group_id = azurerm_network_security_group.baseline_network_security_group.id
}

resource "azurerm_subnet_network_security_group_association" "nsg_internal_aks_subnet" {
  subnet_id                 = data.azurerm_subnet.internal_aks_subnet.id
  network_security_group_id = azurerm_network_security_group.baseline_network_security_group.id
}

resource "azurerm_subnet_network_security_group_association" "nsg_external_aks_subnet" {
  subnet_id                 = data.azurerm_subnet.external_aks_subnet.id
  network_security_group_id = azurerm_network_security_group.baseline_network_security_group.id
}

resource "azurerm_subnet_network_security_group_association" "nsg_database_subnet" {
  subnet_id                 = data.azurerm_subnet.database_subnet.id
  network_security_group_id = azurerm_network_security_group.baseline_network_security_group.id
}