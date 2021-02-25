resource "azurerm_network_watcher" "example" {
  name                = "NetworkWatcher_westeurope"
  location            = var.watcher_location
  resource_group_name = "NetworkWatcherRG"
}

resource "azurerm_resource_group" "NetworkWatcherRG" {
  name     = "NetworkWatcherRG"
  location = var.watcher_location
}

resource "azurerm_network_security_group" "example" {
  name                = "examplea"
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name

  tags = var.common_tags
}

variable "watcher_location" {
  default = "westeurope"
}
