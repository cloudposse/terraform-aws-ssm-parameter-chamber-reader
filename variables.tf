variable "enabled" {
  description = "Set to false to prevent the module from creating any resources"
  default     = "true"
}

variable "override_key" {
  type        = "string"
  default     = ""
  description = "Is specified, use as key to read from ssm parameter and ignore chamber_format."
}

variable "override_value" {
  type        = "string"
  default     = ""
  description = "Is specified, just return it as value by skipping read from ssm parameter."
}

variable "chamber_format" {
  default     = "/%s/%s"
  description = "Format to store parameters in SSM, for consumption with chamber"
}

variable "chamber_service" {
  type        = "string"
  description = "SSM parameter service name for use with chamber. This is used in chamber_format where /$chamber_service/$parameter would be the default."
}

variable "parameter" {
  type        = "string"
  description = "SSM parameter name for use with chamber. This is used in chamber_format where /$chamber_service/$parameter would be the default."
}

variable "default_value" {
  type        = "string"
  default     = ""
  description = "Use as default value in case ssm paramter is empty"
}
