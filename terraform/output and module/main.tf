provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
features {}

}


resource "azurerm_resource_group" "example" {
  name     = "example2-rg"
  location = "westus2"
}
module "storage_account" {
  source = "./modules/storageaccount"

  storage_account_name       = "ntmsmystorageaccount"
  resource_group_name        = azurerm_resource_group.example.name
  location                   = azurerm_resource_group.example.location
  account_tier               = "Standard"
  account_replication_type   = "LRS"

  tags = {
    Environment = "dev"
  }
}
