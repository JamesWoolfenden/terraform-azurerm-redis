
resource "azurerm_virtual_network" "examplea" {
  name                = var.vnet_name
  location            = azurerm_resource_group.examplea.location
  resource_group_name = azurerm_resource_group.examplea.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  tags = var.common_tags
}

variable "vnet_name" {
  default = "vnetwork-redis"
}


resource "azurerm_subnet" "subnet1" {
  resource_group_name  = azurerm_resource_group.examplea.name
  name                 = "subnet1"
  address_prefixes     = ["10.0.1.0/24"]
  virtual_network_name = azurerm_virtual_network.examplea.name
}

resource "azurerm_subnet" "subnet2" {
  resource_group_name  = azurerm_resource_group.examplea.name
  name                 = "subnet2"
  address_prefixes     = ["10.0.2.0/24"]
  virtual_network_name = azurerm_virtual_network.examplea.name
}

resource "azurerm_subnet" "subnet3" {
  resource_group_name  = azurerm_resource_group.examplea.name
  name                 = "subnet3"
  address_prefixes     = ["10.0.3.0/24"]
  virtual_network_name = azurerm_virtual_network.examplea.name
}
