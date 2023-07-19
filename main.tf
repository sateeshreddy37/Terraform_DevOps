resource "azurerm_resource_group" "sateeshrg" {
  location = "eastus"
  name     = "sateesh-rg"
}

resource "azurerm_virtual_network" "sateeshvnet" {
  name                = "sateesh-vnet"
  resource_group_name = "sateesh-rg"
  address_space       = ["10.0.0.0/16"]
  location            = "eastus"
  #depends_on = [
    #azurerm_resource_group.ntierrg
  #]

}