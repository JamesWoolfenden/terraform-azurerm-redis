resource "azurerm_private_endpoint" "examplea" {
  resource_group_name = var.resource_group.name
  location            = var.resource_group.location
  subnet_id           = var.subnet.id
  name                = var.endpoint_name
  private_service_connection {
    private_connection_resource_id = azurerm_redis_cache.examplea.id
    is_manual_connection           = false
    name                           = var.connection_name
    subresource_names = [
      "redisCache",
    ]
  }

  private_dns_zone_group {
    name                 = "default"
    private_dns_zone_ids = [azurerm_private_dns_zone.examplea.id]
  }



  timeouts {

  }
  tags = var.common_tags
}


data "azurerm_subnet" "example" {
  name                 = "subnet3"
  virtual_network_name = var.vnet.name
  resource_group_name  = var.resource_group.name
}

resource "azurerm_network_interface" "examplea" {
  name                = "example-nic"
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
  }

  tags = var.common_tags
}
