resource "azurerm_lb" "lb" {
  resource_group_name = "FinancialProducts-Common-CE-STG"
  name                = "lb"
  location            = "centralus"

  frontend_ip_configuration {
    name                 = "LoadBalancerFrontEnd"
    private_ip_address_allocation = "Dynamic"
    subnet_id           = data.azurerm_subnet.internal_stg.id  
  }
}

resource "azurerm_lb_backend_address_pool" "backend_pool" {
  resource_group_name = "FinancialProducts-Common-CE-STG"
  loadbalancer_id     = azurerm_lb.lb.id
  name                = "backend"
}

resource "azurerm_lb_rule" "lb_rule" {
  resource_group_name            = "FinancialProducts-Common-CE-STG"
  loadbalancer_id                = azurerm_lb.lb.id
  name                           = "LBRule"
  protocol                       = "tcp"
  frontend_port                  = 8080
  backend_port                   = 80
  frontend_ip_configuration_name = "LoadBalancerFrontEnd"
  enable_floating_ip             = false
  backend_address_pool_id        = azurerm_lb_backend_address_pool.backend_pool.id
  idle_timeout_in_minutes        = 5
  probe_id                       = azurerm_lb_probe.lb_probe.id
  depends_on                     = [azurerm_lb_probe.lb_probe]
}

resource "azurerm_lb_probe" "lb_probe" {
  resource_group_name = "FinancialProducts-Common-CE-STG"
  loadbalancer_id     = azurerm_lb.lb.id
  name                = "tcpProbe"
  protocol            = "tcp"
  port                = 80
  interval_in_seconds = 5
  number_of_probes    = 2
}

# resource "azurerm_network_interface_backend_address_pool_association" "network_interface_backend_address_pool_association" {
#   network_interface_id    = azurerm_network_interface.nic.id
#   ip_configuration_name   = "network_interface_backend_address_pool_association"
#   backend_address_pool_id = azurerm_lb_backend_address_pool.backend_pool.id
# }