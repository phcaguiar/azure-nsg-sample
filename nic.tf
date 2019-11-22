resource "azurerm_network_interface" "nic" {
  name                = "nic-vm1"
  location            = "centralus"
  resource_group_name = "FinancialProducts-Common-CE-STG"
  ip_configuration {
    name                          = "nic-vm1"
    subnet_id                     = data.azurerm_subnet.internal_stg.id
    private_ip_address_allocation = "dynamic"
    load_balancer_backend_address_pools_ids = [azurerm_lb_backend_address_pool.backend_pool.id]
  }
}