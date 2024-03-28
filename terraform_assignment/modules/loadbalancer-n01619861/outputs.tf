output "n01619861-loadbalancer-name" {
  value = azurerm_lb.n01619861-loadbalancer.name
}

output "n01619861-loadbalancer-ip" {
  value = azurerm_public_ip.n01619861-loadbalancer-pip.ip_address
}