# Azure Resource Group Terraform Module

[Terraform](https://www.terraform.io/) module for create [Resource Groups](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal#what-is-a-resource-group) on Microsoft Azure.

![GitHub release (latest by date)](https://img.shields.io/github/v/release/jortfal/terraform-azure-resource-group)
![GitHub Release Date](https://img.shields.io/github/release-date/jortfal/terraform-azure-resource-group)
![GitHub license](https://img.shields.io/github/license/jortfal/terraform-azure-resource-group)
[![Build Status](https://github.com/jortfal/semantic-release-terraform-config/workflows/Test/badge.svg)](https://github.com/jortfal/terraform-azure-resource-group/actions?query=workflow%3ATest+branch%3Amaster) 
![Maintenance](https://img.shields.io/maintenance/yes/2021?color=green)
![Maintainer](https://img.shields.io/badge/maintainer-jortfal-green)

## Usage

### How create only one resource group?

```hcl
module "single_resource_group" {

  source = "git@github.com:jortfal/terraform-azure-resource-group.git?ref=vX.Y.Z

  rgs = [
    {
      name     = "et-prod-weu-rg-example-001"
      location = "West Europe"
      tags = {
        Owner       = "jortfal"
        Environment = "production"
      }
    }
  ]
}
```

### How create multiple resource groups?

```hcl
module "single_resource_group" {

  source = "git@github.com:jortfal/terraform-azure-resource-group.git?ref=vX.Y.Z

  rgs = [
    {
      name     = "et-prod-weu-rg-example-001"
      location = "West Europe"
      tags = {
        Owner       = "jortfal"
        Environment = "production"
      }
    },
    {
      name     = "et-prod-weu-rg-example-002"
      location = "West Europe"
      tags = {
        Owner       = "jortfal"
        Environment = "production"
      }
    },
    {
      name     = "et-prod-weu-rg-example-003"
      location = "West Europe"
      tags = {
        Owner       = "jortfal"
        Environment = "production"
      }
    },
    {
      name     = "et-prod-weu-rg-example-004"
      location = "West Europe"
      tags = {
        Owner       = "jortfal"
        Environment = "production"
      }
    },
    {
      name     = "et-prod-weu-rg-example-005"
      location = "West Europe"
      tags = {
        Owner       = "jortfal"
        Environment = "production"
      }
    }
  ]
}
```

## Known issues

No issue is creating limit on this module.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.0, <= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 2.30.0, <= 2.56.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 2.30.0, <= 2.56.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_rgs"></a> [rgs](#input\_rgs) | A list of resource group objects | <pre>list(<br>    object({<br>      name     = string<br>      location = string<br>      tags     = map(string)<br>    })<br>  )</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Resource Group |

<!-- END_TF_DOCS -->

## Authors

Module created and managed by `@jortfal` [José Manuel Ortega Falcón](https://www.jortfal.es).

## License

Apache 2 Licensed. See [`LICENSE`](https://github.com/jortfal/terraform-azure-resource-group/blob/main/LICENSE) file for full details.
