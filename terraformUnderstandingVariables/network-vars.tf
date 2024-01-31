# network-vars.tf

variable "rg" {
  default = "network-rg"
}

variable "location" {
  default = "East US"
}

variable "vnet" {
  default = "network-vnet"
}

variable "vnet_space" {
  default = ["10.0.0.0/16"]
}

variable "subnet1" {
  default = "network-subnet1"
}

variable "subnet2" {
  default = "network-subnet2"
}

variable "subnet1_space" {
  default = ["10.0.1.0/24"]
}
variable "subnet2_space" {
  default = ["10.0.2.0/24"]
}

variable "nsg1" {
  default = "network-nsg1"
}
variable "nsg2" {
  default = "network-nsg2"
}

