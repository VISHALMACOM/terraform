variable "common_tags" {
  type        = map(string)
}

variable "location" {
  type        = string
}

variable "resource_group_name" {
  type        = string
  default     = "n01619861-rg"
}
