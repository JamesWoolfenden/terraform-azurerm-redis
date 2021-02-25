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
    name                 = "privatelink-redis-cache-windows-net"
    private_dns_zone_ids = [azurerm_private_dns_zone.examplea.id]
  }

  timeouts {

  }
  tags = var.common_tags
}
