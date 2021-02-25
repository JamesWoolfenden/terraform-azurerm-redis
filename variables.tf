variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "resource_group" {
}

variable "vnet" {
}

variable "day_of_week" {
  default     = "Monday"
  description = "Monday Tuesday Wednesday Thursday Friday Saturday Sunday"
}

variable "redis_name" {
  default = "examplea-cache"
}

variable "capacity" {
  default = 1
}

variable "sku_name" {
  type    = string
  default = "Standard"
  validation {
    condition     = var.sku_name == "Basic" || var.sku_name == "Standard" || var.sku_name == "Premium"
    error_message = "Sku name can be Basic, Standard or Premium."
  }
}

variable "family" {
  type    = string
  default = "C"
  validation {
    condition     = var.family == "C" || var.family == "P"
    error_message = "Family name can be C or P."
  }
}

variable "minimum_tls_version" {
  type    = string
  default = "1.2"
}

variable "subnet" {

}

variable "endpoint_name" {
  type    = string
  default = "examplea-private"
}

variable "connection_name" {
  type    = string
  default = "examplea-private"
}


variable "redis_config" {
  default = {
    aof_backup_enabled              = false
    maxfragmentationmemory_reserved = 50
    maxmemory_delta                 = 50
    maxmemory_policy                = "volatile-lru"
    maxmemory_reserved              = 50
    rdb_backup_enabled              = false
    rdb_backup_max_snapshot_count   = 0
  }
}
