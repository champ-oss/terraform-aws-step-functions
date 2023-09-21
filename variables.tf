variable "tags" {
  description = "Map of tags to assign to resources"
  type        = map(string)
  default     = {}
}

variable "git" {
  description = "Name of the Git repo"
  type        = string
  default     = "terraform-aws-step-functions"
}

variable "logging_enabled" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine.html#logging"
  default     = true
  type        = bool
}

variable "tracing_enabled" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine.html#tracing_configuration-configuration-block"
  default     = false
  type        = bool
}

variable "type" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine.html#type"
  type        = string
  default     = "STANDARD"
}

variable "definition" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine.html#definition"
  type        = any
  default     = null
}

variable "include_execution_data" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine.html#include_execution_data"
  type        = string
  default     = true
}

variable "log_level" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine.html#log_level"
  type        = string
  default     = "ALL"
}

variable "name" {
  description = "Unique identifier for naming resources"
  type        = string
}

variable "retention_in_days" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group#retention_in_days"
  type        = number
  default     = 365
}

variable "enable_iam_role_name_prefix" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role#name_prefix"
  type        = bool
  default     = true
}
