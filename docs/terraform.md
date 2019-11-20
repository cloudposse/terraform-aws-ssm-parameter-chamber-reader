## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| chamber_format | Format to store parameters in SSM, for consumption with chamber | string | `/%s/%s` | no |
| chamber_service | SSM parameter service name for use with chamber. This is used in chamber_format where /$chamber_service/$parameter would be the default. | string | - | yes |
| default_value | Use as default value in case ssm paramter is empty | string | `` | no |
| enabled | Set to false to prevent the module from creating any resources | string | `true` | no |
| override_key | Is specified, use as key to read from ssm parameter and ignore chamber_format. | string | `` | no |
| override_value | Is specified, just return it as value by skipping read from ssm parameter. | string | `` | no |
| parameter | SSM parameter name for use with chamber. This is used in chamber_format where /$chamber_service/$parameter would be the default. | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| value | Parameter value |

