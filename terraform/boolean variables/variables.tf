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
variable "create_resource_group" {
  type    = bool
#  default = true
}

variable "resource_group_name" {
  type    = string
  default = "example-rg"
}

variable "resource_group_location" {
  type    = string
  default = "eastus"
}