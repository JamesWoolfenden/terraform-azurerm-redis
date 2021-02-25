
resource "azurerm_virtual_network" "examplea" {
  name                = var.vnet_name
  location            = azurerm_resource_group.examplea.location
  resource_group_name = azurerm_resource_group.examplea.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]



  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
  }

  subnet {
    name           = "subnet3"
    address_prefix = "10.0.3.0/24"
    security_group = azurerm_network_security_group.examplea.id
  }

  tags = var.common_tags
}

data "azurerm_subnet" "examplea" {
  name                 = "subnet3"
  resource_group_name  = azurerm_resource_group.examplea.name
  virtual_network_name = var.vnet_name
  depends_on = [
    azurerm_virtual_network.examplea
  ]
}

variable "vnet_name" {
  default = "vnetwork-redis"
}
