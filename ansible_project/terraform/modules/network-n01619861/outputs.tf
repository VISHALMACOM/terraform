output "virtual_network_name" {
  value = azurerm_virtual_network.n01619861-vnet.name
}

output "subnet_name" {
  value = azurerm_subnet.n01619861-subnet.name
}

output "n01619861-vnet" {
  value = azurerm_virtual_network.n01619861-vnet.name
}

output "n01619861-subnet" {
  value = {
    id   = azurerm_subnet.n01619861-subnet.id
    name = azurerm_subnet.n01619861-subnet.name
  }
}
