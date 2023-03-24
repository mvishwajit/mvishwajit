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
variable "selected_environment" {
  type    = string
#  default = "dev"
}

variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
  }))
  default = {
    prod = {
      name     = "example-prod-rg"
      location = "westus2"
    }
    dev = {
      name     = "example-dev-rg"
      location = "eastus"
    }
    test = {
      name     = "example-test-rg"
      location = "centralus"
    }
  }
}