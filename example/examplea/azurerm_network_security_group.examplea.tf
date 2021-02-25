resource "azurerm_network_security_group" "examplea" {
  name                = "examplea"
  location            = azurerm_resource_group.examplea.location
  resource_group_name = azurerm_resource_group.examplea.name
}
