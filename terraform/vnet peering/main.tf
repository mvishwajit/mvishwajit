provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
features {}

}
resource "azurerm_resource_group" "example" {
  name     = "example1-rg"
  location = "westus2"
}


# Create the first virtual network and subnet
resource "azurerm_virtual_network" "vnet1" {
  name                = var.vnet1_name
  address_space       = ["10.0.0.0/16"]
  location            = "eastus"
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "vnet1_subnet" {
  name                 = var.vnet1_subnet_name
  address_prefixes     = ["10.0.1.0/24"]
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
}

# Create the second virtual network and subnet
resource "azurerm_virtual_network" "vnet2" {
  name                = var.vnet2_name
  address_space       = ["10.1.0.0/16"]
  location            = "westus"
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "vnet2_subnet" {
  name                 = var.vnet2_subnet_name
  address_prefixes     = ["10.1.1.0/24"]
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.vnet2.name
}

# Create a peering connection from vnet1 to vnet2
resource "azurerm_virtual_network_peering" "vnet1_to_vnet2" {
  name                         = "vnet1-to-vnet2"
  resource_group_name          = azurerm_resource_group.example.name
  virtual_network_name         = azurerm_virtual_network.vnet1.name
  remote_virtual_network_id    = azurerm_virtual_network.vnet2.id
  allow_virtual_network_access = true
}

# Create a peering connection from vnet2 to vnet1
resource "azurerm_virtual_network_peering" "vnet2_to_vnet1" {
  name                         = "vnet2-to-vnet1"
  resource_group_name          = azurerm_resource_group.example.name
  virtual_network_name         = azurerm_virtual_network.vnet2.name
  remote_virtual_network_id    = azurerm_virtual_network.vnet1.id
  allow_virtual_network_access = true
}
