# main.tf

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "myresource" {
  name     = "myrjjj"
  location = "West US"
}

resource "azurerm_virtual_network" "example2" {
  name                = "my-virtual-network2"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

