output "n01619861-vmlinux" {
  value = {
    ids       = values(azurerm_linux_virtual_machine.n01619861-vmlinux)[*].id
    hostnames = values(azurerm_linux_virtual_machine.n01619861-vmlinux)[*].name
    nic-ids   = values(azurerm_linux_virtual_machine.n01619861-vmlinux)[*].network_interface_ids[0]
  }
}

output "n01619861-vmlinux-fqdn" {
  value = values(azurerm_public_ip.n01619861-vmlinux-pip)[*].fqdn
}

output "n01619861-vmlinux-private-ip" {
  value = values(azurerm_linux_virtual_machine.n01619861-vmlinux)[*].private_ip_address
}

output "n01619861-vmlinux-public-ip" {
  value = values(azurerm_linux_virtual_machine.n01619861-vmlinux)[*].public_ip_address
}

output "n01619861-vmlinux-nic-ids" {
  value = [values(azurerm_network_interface.n01619861-vmlinux-nic)[*].id]
}

