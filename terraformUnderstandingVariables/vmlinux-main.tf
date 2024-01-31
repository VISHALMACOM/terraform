# vmlinux-main.tf

#no relation
resource "azurerm_network_interface" "n01619861-u-vm1-nic" {
  name                      = "${var.name}-nic"
  location                  = var.location
  resource_group_name       = azurerm_resource_group.network.name

  ip_configuration {
    name                          = "${var.name}-ipconfig"
    subnet_id                     = azurerm_subnet.network_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_dns_zone" "n0169861-u-vm1-public" {
  name                = "${var.name}-vm.net"
  resource_group_name = azurerm_resource_group.network.name
}

#no relation
resource "azurerm_public_ip" "n01619861-u-vm1-pip" {
  name                = "${var.name}-pip"
  location            = var.location
  resource_group_name = azurerm_resource_group.network.name
  allocation_method   = "Dynamic"
}

#no relation
resource "azurerm_linux_virtual_machine" "n01619861-u-vm1-vm" {
  name                  = "${var.name}-vm"
  location              = var.location
  resource_group_name   = azurerm_resource_group.network.name
  size                  = var.size
  admin_username        = var.admin
  network_interface_ids = [
	azurerm_network_interface.n01619861-u-vm1-nic.id
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

