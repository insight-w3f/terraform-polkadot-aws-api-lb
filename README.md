# terraform-polkadot-aws-api-lb

[![open-issues](https://img.shields.io/github/issues-raw/insight-w3f/terraform-polkadot-aws-api-lb?style=for-the-badge)](https://github.com/insight-w3f/terraform-polkadot-aws-api-lb/issues)
[![open-pr](https://img.shields.io/github/issues-pr-raw/insight-w3f/terraform-polkadot-aws-api-lb?style=for-the-badge)](https://github.com/insight-w3f/terraform-polkadot-aws-api-lb/pulls)

## Features

This module...

## Terraform Versions

For Terraform v0.12.0+

## Usage

```
module "this" {
    source = "github.com/insight-w3f/terraform-polkadot-aws-api-lb"

}
```
## Examples

- [defaults](https://github.com/insight-w3f/terraform-polkadot-aws-api-lb/tree/master/examples/defaults)

## Known  Issues
No issue is creating limit on this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| create | Bool to create the resources | `bool` | `true` | no |
| environment | The environment | `string` | `"dev"` | no |
| namespace | The namespace to deploy into | `string` | `"polkadot"` | no |
| network\_name | The network name, ie kusama / mainnet | `string` | `"kusama"` | no |
| owner | Owner of the infrastructure | `string` | `"insight-w3f"` | no |
| stage | The stage of the deployment | `string` | `"test"` | no |
| subnet\_ids | The subnet ids for the LB | `list(string)` | n/a | yes |
| vpc\_id | vpc id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| lb\_arn | n/a |
| lb\_id | n/a |
| name | n/a |
| public\_ips | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Testing
This module has been packaged with terratest tests

To run them:

1. Install Go
2. Run `make test-init` from the root of this repo
3. Run `make test` again from root

## Authors

Module managed by [robc-io](https://github.com/insight-w3f)

## Credits

- [Anton Babenko](https://github.com/antonbabenko)

## License

Apache 2 Licensed. See LICENSE for full details.