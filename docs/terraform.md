## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| chamber\_format | Format to store parameters in SSM, for consumption with chamber | `string` | `"/%s/%s"` | no |
| chamber\_service | SSM parameter service name for use with chamber. This is used in chamber\_format where /$chamber\_service/$parameter would be the default. | `string` | n/a | yes |
| default\_value | Use as default value in case ssm paramter is empty | `string` | `""` | no |
| enabled | Set to false to prevent the module from creating any resources | `bool` | `true` | no |
| override\_key | Is specified, use as key to read from ssm parameter and ignore chamber\_format. | `string` | `""` | no |
| override\_value | Is specified, just return it as value by skipping read from ssm parameter. | `string` | `""` | no |
| parameter | SSM parameter name for use with chamber. This is used in chamber\_format where /$chamber\_service/$parameter would be the default. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| value | Parameter value |

