module "redis" {
  source         = "../../"
  common_tags    = var.common_tags
  resource_group = azurerm_resource_group.examplea
  vnet           = azurerm_virtual_network.examplea
  subnet_id      = azurerm_subnet.subnet3.id
}
