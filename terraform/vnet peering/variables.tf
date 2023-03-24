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
# Define variables for the virtual networks and subnets
variable "vnet1_name" {
  type    = string
  default = "example-vnet1"
}

variable "vnet2_name" {
  type    = string
  default = "example-vnet2"
}

variable "vnet1_subnet_name" {
  type    = string
  default = "example-subnet1"
}

variable "vnet2_subnet_name" {
  type    = string
  default = "example-subnet2"
}