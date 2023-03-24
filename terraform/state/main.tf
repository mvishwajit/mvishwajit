terraform {
  backend "azurerm" {
    resource_group_name   = "ntms-alexa-RG"
    storage_account_name  = "ntmssa12121"
    container_name        = "test1"
    key                   = "terraform1.tfstate"
  }
}
provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
features {}

}


resource "azurerm_resource_group" "example" {
  name     = "example3-rg"
  location = "westus2"
}
