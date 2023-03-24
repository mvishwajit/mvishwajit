provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
features {}

}

resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = "eastus"

  
}
resource "azurerm_storage_account" "example" {
  name                     = "ntmsstorageaccount1"
  resource_group_name      = var.rgname
  location                 = azurerm_resource_group.example.location
  account_tier             = var.storage_account_tiers[0]
  account_replication_type = "LRS"
  # Other storage account settings
}

