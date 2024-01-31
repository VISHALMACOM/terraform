# vmlinux-main.tf

#no relation
resource "azurerm_network_interface" "nic" {
  name                = "${var.name}-nic"
  location            = var.location
  resource_group_name = azurerm_resource_group.network.name
  tags                = local.common_tags

  ip_configuration {
    name                          = "${var.name}-ipconfig"
    subnet_id                     = azurerm_subnet.network_subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip.id
  }
}

#no relation
resource "azurerm_public_ip" "pip" {
  name                = "${var.name}-pip"
  location            = var.location
  resource_group_name = azurerm_resource_group.network.name
  allocation_method   = "Dynamic"
  domain_name_label   = var.name
  tags                = local.common_tags
}

#no relation
resource "azurerm_linux_virtual_machine" "vm" {
  name                = "${var.name}-vm"
  location            = var.location
  resource_group_name = azurerm_resource_group.network.name
  size                = var.size
  admin_username      = var.admin
  tags                = local.common_tags
  network_interface_ids = [
    azurerm_network_interface.nic.id
  ]

  admin_ssh_key {
    username   = var.admin
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    name                 = "${var.name}-os-disk"
    caching              = var.caching
    storage_account_type = var.storage_account_type
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = "latest"
  }
}

