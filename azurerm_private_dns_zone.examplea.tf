resource "azurerm_private_dns_zone" "examplea" {
  name                = var.zone_name
  resource_group_name = var.resource_group.name
}

variable "zone_name" {
  type        = string
  description = "The name of the private DNS zone"
  default     = "privatelink.redis.cache.windows.net"
}
