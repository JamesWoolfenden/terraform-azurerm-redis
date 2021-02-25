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

Supply values for your resource and database name, other values have defaults which can be over ridden.

---

This project is 100% Open Source and licensed under the [APACHE2](LICENSE).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [azurerm_network_security_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) |
| [azurerm_network_watcher](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_watcher) |
| [azurerm_private_dns_zone](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone) |
| [azurerm_private_endpoint](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) |
| [azurerm_redis_cache](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/redis_cache) |
| [azurerm_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| capacity | n/a | `number` | `1` | no |
| common\_tags | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| connection\_name | n/a | `string` | `"examplea-private"` | no |
| day\_of\_week | Monday Tuesday Wednesday Thursday Friday Saturday Sunday | `string` | `"Monday"` | no |
| endpoint\_name | n/a | `string` | `"examplea-private"` | no |
| family | n/a | `string` | `"C"` | no |
| minimum\_tls\_version | n/a | `string` | `"1.2"` | no |
| redis\_config | n/a | `map` | <pre>{<br>  "aof_backup_enabled": false,<br>  "maxfragmentationmemory_reserved": 50,<br>  "maxmemory_delta": 50,<br>  "maxmemory_policy": "volatile-lru",<br>  "maxmemory_reserved": 50,<br>  "rdb_backup_enabled": false,<br>  "rdb_backup_max_snapshot_count": 0<br>}</pre> | no |
| redis\_name | n/a | `string` | `"examplea-cache"` | no |
| resource\_group | n/a | `any` | n/a | yes |
| sku\_name | n/a | `string` | `"Standard"` | no |
| subnet | n/a | `any` | n/a | yes |
| vnet | n/a | `any` | n/a | yes |
| watcher\_location | n/a | `string` | `"westeurope"` | no |
| zone\_name | The name of the private DNS zone | `string` | `"privatelink.redis.cache.windows.net"` | no |

## Outputs

| Name | Description |
|------|-------------|
| cache | n/a |
| endpoint | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

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
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-azurerm-redis&url=https://github.com/JamesWoolfenden/terraform-azurerm-redis
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-azurerm-redis&url=https://github.com/JamesWoolfenden/terraform-azurerm-redis
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-azurerm-redis
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-azurerm-redis
[share_email]: mailto:?subject=terraform-azurerm-redis&body=https://github.com/JamesWoolfenden/terraform-azurerm-redis
