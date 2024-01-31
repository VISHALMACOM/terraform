resource "azurerm_resource_group" "network" {
  name       = var.rg
  location   = var.location
#  depends_on = [azurerm_linux_virtual_machine.vm]
}

resource "azurerm_virtual_network" "virtual-network" {
  name                = var.vnet
  location            = azurerm_resource_group.network.location
  resource_group_name = azurerm_resource_group.network.name
  address_space       = var.vnet_space
}

resource "azurerm_subnet" "network_subnet" {
  name                 = var.subnet1
  resource_group_name  = azurerm_resource_group.network.name
  virtual_network_name = azurerm_virtual_network.virtual-network.name
  address_prefixes     = var.subnet1_space
}

resource "azurerm_subnet" "network_subnet2" {
  name                 = var.subnet2
  resource_group_name  = azurerm_resource_group.network.name
  virtual_network_name = azurerm_virtual_network.virtual-network.name
  address_prefixes     = var.subnet2_space
}

resource "azurerm_network_security_group" "network-sg" {
  name                = var.nsg1
  location            = azurerm_resource_group.network.location
  resource_group_name = azurerm_resource_group.network.name

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "Production"
  }
}

resource "azurerm_network_security_group" "network-sg2" {
  name                = var.nsg2
  location            = azurerm_resource_group.network.location
  resource_group_name = azurerm_resource_group.network.name

  security_rule {
    name                       = "rule1"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "rule2"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "5985"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

}

resource "azurerm_subnet_network_security_group_association" "network-sga" {
  subnet_id                 = azurerm_subnet.network_subnet.id
  network_security_group_id = azurerm_network_security_group.network-sg.id
}
resource "azurerm_subnet_network_security_group_association" "network-sga2" {
  subnet_id                 = azurerm_subnet.network_subnet2.id
  network_security_group_id = azurerm_network_security_group.network-sg2.id
}
