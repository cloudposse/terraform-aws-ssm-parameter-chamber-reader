locals {
  skip_read = length(var.override_value) > 0

  chamber_key = format(var.chamber_format, var.chamber_service, var.parameter)
  key         = length(var.override_key) > 0 ? var.override_key : local.chamber_key

  get_or_else = length(join("", data.aws_ssm_parameter.default.*.arn)) > 0 ? join("", data.aws_ssm_parameter.default.*.value) : var.default_value
  value       = local.skip_read ? var.override_value : local.get_or_else
}

data "aws_ssm_parameter" "default" {
  count = var.enabled && false == local.skip_read ? 1 : 0
  name  = local.key
}

