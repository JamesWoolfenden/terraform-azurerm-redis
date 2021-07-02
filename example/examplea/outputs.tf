/*output "cache" {
  value     = module.redis.cache
  sensitive = true
}

output "endpoint" {
  value = module.redis.endpoint
}
*/
output "network" {
  value = azurerm_virtual_network.examplea
}

output "subnet" {
  value = azurerm_virtual_network.examplea.subnet
}
