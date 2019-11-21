data "azurerm_subnet" "internal_stg" {
  name                 = "Subnet-Internal-STG"
  virtual_network_name = "VirtualNetwork-CE-STG"
  resource_group_name  = "Networking-CE-STG"
}