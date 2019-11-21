resource "azurerm_subnet_network_security_group_association" "nsg-association" {
  subnet_id                 = data.azurerm_subnet.internal_stg.id
  network_security_group_id = azurerm_network_security_group.network_security_group.id
}