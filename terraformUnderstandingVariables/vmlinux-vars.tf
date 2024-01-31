variable "name" {
  default = "n01619861-u-vm1"
}

variable "size" {
  default = "Standard_B1s"
}

variable "admin" {
  default = "n01619861"
}

variable "public_key" {
  default = "/home/vishal/.ssh/id_rsa.pub"
}

# OS disk attributes
variable "storage_account_type" {
  default = "Premium_LRS"
}

variable "disk_size" {
  default = 32
}

variable "caching" {
  default = "ReadWrite"
}

# Ubuntu Linux OS information
variable "publisher" {
  default = "Canonical"
}

variable "offer" {
  default = "UbuntuServer"
}

variable "sku" {
  default = "19.04"
}
