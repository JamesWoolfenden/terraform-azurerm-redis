resource "azurerm_network_security_group" "example" {
  name                = var.nsg_name
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name

  tags = var.common_tags
}
