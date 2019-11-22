resource "azurerm_virtual_machine" "vm" {
  name                  = "vm1"
  location              = "centralus"
  resource_group_name   = "FinancialProducts-Common-CE-STG"
  network_interface_ids = [azurerm_network_interface.nic.id]
  vm_size               = "Standard_B2s"

  delete_os_disk_on_termination = true

  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "vm-1-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "vm1"
    admin_username = "paguiar"
    admin_password = "Infra.2019"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  provisioner "remote-exec" {
    inline = [
      "echo ''",
    ]

  connection {
    type     = "ssh"
    user     = "paguiar"
    password = "Infra.2019"
    host     = azurerm_network_interface.nic.private_ip_address
    }
  }  
  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i '${azurerm_network_interface.nic.private_ip_address},' playbook.yml --extra-vars 'ansible_user=paguiar ansible_password=Infra.2019'"
  }  

}