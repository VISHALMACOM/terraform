output "vm_hostname" {
  value = azurerm_linux_virtual_machine.vm.name
}

output "vm_fqdn" {
  value = azurerm_public_ip.pip.fqdn
}

output "private_ip_address" {
  value = azurerm_network_interface.nic.private_ip_address
}

output "public_ip_address" {
  value = azurerm_public_ip.pip.ip_address
}

output "virtual_network" {
  value = {
    name          = azurerm_virtual_network.virtual-network.name
    address_space = azurerm_virtual_network.virtual-network.address_space
  }
}

output "subnet_info" {
  value = {
    subnet1_name          = azurerm_subnet.network_subnet.name
    subnet1_address_space = azurerm_subnet.network_subnet.address_prefixes
    subnet2_name          = azurerm_subnet.network_subnet2.name
    subnet2_address_space = azurerm_subnet.network_subnet2.address_prefixes
  }
}
