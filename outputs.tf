output "cache" {
  value     = azurerm_redis_cache.examplea
  sensitive = true
}

output "endpoint" {
  value = azurerm_private_endpoint.examplea
}
