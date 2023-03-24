provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
features {}

}
resource "azurerm_resource_group" "example" {
  name     = var.resource_groups[var.selected_environment].name
  location = var.resource_groups[var.selected_environment].location
}
