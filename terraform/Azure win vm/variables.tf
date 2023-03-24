variable "subscription_id" {
    type= string
}
variable "client_id" {
    description = "The client ID to be used to connect to Azure"
    type = string
}
variable "client_secret" {
    description = "The client secret to be used to connect to Azure"
    type = string
}
variable "tenant_id" {
    description = "The tenant ID to be used to connect to Azure"
    type = string
}
variable "resource_group_name" {
  type    = string
  default = "example-rg"
}

variable "virtual_network_name" {
  type    = string
  default = "example-vnet"
}

variable "subnet_name" {
  type    = string
  default = "example-subnet"
}