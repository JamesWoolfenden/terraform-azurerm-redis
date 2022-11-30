# terraform-azurerm-redis

[![Build Status](https://github.com/JamesWoolfenden/terraform-azurerm-redis/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-azurerm-redis)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-azurerm-redis.svg)](https://github.com/JamesWoolfenden/terraform-azurerm-redis/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-azurerm-redis.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-azurerm-redis/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-azurerm-redis/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-redis&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-azurerm-redis/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-redis&benchmark=INFRASTRUCTURE+SECURITY)

This is module to help you deploy SQL ON AZURE.

## Usage

Add **module.redis.tf** to your Terraform code:

```terraform
module "redis" {
  source         = "JamesWoolfenden/redis/azure"
  version        = "0.0.2"
  common_tags    = var.common_tags
  resource_group = azurerm_resource_group.examplea
  vnet           = azurerm_virtual_network.examplea
  subnet         = data.azurerm_subnet.examplea
}

```

## Costs

```text
Monthly cost estimate

Project: JamesWoolfenden/terraform-azurerm-redis/example/examplea

 Name                                            Monthly Qty  Unit    Monthly Cost

 module.redis.azurerm_private_dns_zone.examplea
 └─ Hosted zone                                            1  months         $0.50

 module.redis.azurerm_redis_cache.examplea
 └─ Cache usage (Standard_C1)                          1,460  hours        $201.48

 OVERALL TOTAL                                                             $201.98
----------------------------------
2 resource types weren't estimated as they're not supported yet.
1 x azurerm_network_watcher
1 x azurerm_private_endpoint
```

Supply values for your resource and database name, other values have defaults which can be over ridden.

---

This project is 100% Open Source and licensed under the [APACHE2](LICENSE).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_interface.examplea](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_network_security_group.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_private_dns_zone.examplea](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone) | resource |
| [azurerm_private_endpoint.examplea](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |
| [azurerm_redis_cache.examplea](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/redis_cache) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capacity"></a> [capacity](#input\_capacity) | n/a | `number` | `1` | no |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| <a name="input_connection_name"></a> [connection\_name](#input\_connection\_name) | n/a | `string` | `"examplea-private"` | no |
| <a name="input_day_of_week"></a> [day\_of\_week](#input\_day\_of\_week) | Monday Tuesday Wednesday Thursday Friday Saturday Sunday | `string` | `"Monday"` | no |
| <a name="input_endpoint_name"></a> [endpoint\_name](#input\_endpoint\_name) | n/a | `string` | `"examplea-private"` | no |
| <a name="input_family"></a> [family](#input\_family) | n/a | `string` | `"C"` | no |
| <a name="input_minimum_tls_version"></a> [minimum\_tls\_version](#input\_minimum\_tls\_version) | n/a | `string` | `"1.2"` | no |
| <a name="input_nsg_name"></a> [nsg\_name](#input\_nsg\_name) | n/a | `string` | `"examplea"` | no |
| <a name="input_redis_config"></a> [redis\_config](#input\_redis\_config) | n/a | `map` | <pre>{<br>  "aof_backup_enabled": false,<br>  "maxfragmentationmemory_reserved": 50,<br>  "maxmemory_delta": 50,<br>  "maxmemory_policy": "volatile-lru",<br>  "maxmemory_reserved": 50,<br>  "rdb_backup_enabled": false,<br>  "rdb_backup_max_snapshot_count": 0<br>}</pre> | no |
| <a name="input_redis_name"></a> [redis\_name](#input\_redis\_name) | n/a | `string` | `"examplea-cache"` | no |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | n/a | `any` | n/a | yes |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | n/a | `string` | `"Standard"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | n/a | `any` | n/a | yes |
| <a name="input_vnet"></a> [vnet](#input\_vnet) | n/a | `any` | n/a | yes |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | The name of the private DNS zone | `string` | `"privatelink.redis.cache.windows.net"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cache"></a> [cache](#output\_cache) | n/a |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- BEGINNING OF PRE-COMMIT-PIKE DOCS HOOK -->
The Terraform resource required is:

```golang

resource "azurerm_role_definition" "terraform_pike" {
  role_definition_id = local.uuid
  name               = "terraform_pike"
  scope              = data.azurerm_subscription.primary.id

  permissions {
    actions = [
    "Microsoft.Network/networkInterfaces/delete",
    "Microsoft.Network/networkInterfaces/read",
    "Microsoft.Network/networkInterfaces/write",
    "Microsoft.Network/networkSecurityGroups/delete",
    "Microsoft.Network/networkSecurityGroups/read",
    "Microsoft.Network/networkSecurityGroups/write",
    "Microsoft.Network/virtualNetworks/subnets/join/action",
    "Microsoft.Network/virtualNetworks/subnets/read",
    "Microsoft.Resources/subscriptions/resourcegroups/read"]
    not_actions = []
  }

  assignable_scopes = [
    data.azurerm_subscription.primary.id,
  ]
}

locals {
  uuid = uuid()
}

data "azurerm_subscription" "primary" {
}


```
<!-- END OF PRE-COMMIT-PIKE DOCS HOOK -->

## Related Projects

Check out these related projects.

## References

For additional context, refer to some of these links.

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-azurerm-redis/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-azurerm-redis/issues) to report any bugs or file feature requests.

## Copyrights

Copyright 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
