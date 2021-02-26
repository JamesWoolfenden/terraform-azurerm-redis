resource "azurerm_network_watcher" "example" {
  name                = "NetworkWatcher_westeurope"
  location            = var.watcher_location
  resource_group_name = azurerm_resource_group.NetworkWatcherRG.name
}

resource "azurerm_resource_group" "NetworkWatcherRG" {
  name     = "NetworkWatcherRG"
  location = var.watcher_location
}
