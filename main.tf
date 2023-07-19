resource "azurerm_resource_group" "nagrg" {
  location = var.location
  name     = "nag-rg"
}

resource "azurerm_virtual_network" "nagvnet" {
  name                = "nag-vnet"
  resource_group_name = "nag-rg"
  address_space       = var.vnet-range
  location            = var.location
  #depends_on = [
    #azurerm_resource_group.ntierrg
  #]

}