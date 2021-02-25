
resource "azurerm_redis_cache" "examplea" {
  name                = var.redis_name
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name
  capacity            = var.capacity
  family              = var.family
  sku_name            = var.sku_name
  // ensure always false
  enable_non_ssl_port = false
  //check 1.2 or better
  minimum_tls_version = var.minimum_tls_version

  patch_schedule {
    day_of_week = var.day_of_week
  }
  //zones                     = []
  // private_static_ip_address = "value"

  //should be set should be false
  public_network_access_enabled = false
  redis_configuration {
    aof_backup_enabled              = var.redis_config["aof_backup_enabled"]
    maxfragmentationmemory_reserved = var.redis_config["maxfragmentationmemory_reserved"]
    maxmemory_delta                 = var.redis_config["maxmemory_delta"]
    maxmemory_policy                = var.redis_config["maxmemory_policy"]
    maxmemory_reserved              = var.redis_config["maxmemory_reserved"]
    rdb_backup_enabled              = var.redis_config["rdb_backup_enabled"]
    rdb_backup_max_snapshot_count   = var.redis_config["rdb_backup_max_snapshot_count"]
  }
  timeouts {

  }
  tags = var.common_tags
}
