# rgroup-n01619861
output "resource_group_name" {
  value = module.rgroup-n01619861.resource_group_name
}

# network-n01619861
output "virtual_network_name" {
  value = module.network-n01619861.virtual_network_name
}

output "subnet_name" {
  value = module.network-n01619861.subnet_name
}

# common-n01619861
output "log_analytics_workspace_name" {
  value = module.common-n01619861.log_analytics_workspace_name
}

output "recovery_services_vault_name" {
  value = module.common-n01619861.recovery_services_vault_name
}

output "storage_account_name" {
  value = module.common-n01619861.storage_account_name
}

# database-n01619861
output "database_instance_name" {
  value = module.database-n01619861.database_instance_name
}

# vmlinux-n01619861
output "vmlinux-hostname" {
  value = module.vmlinux-n01619861.n01619861-vmlinux
}

output "vmlinux-fqdn" {
  value = module.vmlinux-n01619861.n01619861-vmlinux-fqdn
}

output "vmlinux-private-ip" {
  value = module.vmlinux-n01619861.n01619861-vmlinux-private-ip
}

output "vmlinux-public-ip" {
  value = module.vmlinux-n01619861.n01619861-vmlinux-public-ip
}

output "vmlinux-nic-ids" {
  value = module.vmlinux-n01619861.n01619861-vmlinux-nic-ids
}

# loadbalancer
output "loadbalancer" {
  value = module.loadbalancer-n01619861.n01619861-loadbalancer-name
}

output "loadbalancer-ip" {
  value = module.loadbalancer-n01619861.n01619861-loadbalancer-ip
}
