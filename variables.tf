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
  default     = false
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

variable "role_arn" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine.html#role_arn"
  type        = string
  default     = null
}

variable "definition" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine.html#definition"
  type        = any
  default     = null
}

variable "log_destination" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine.html#log_destination"
  type        = string
  default     = null
}

variable "include_execution_data" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine.html#include_execution_data"
  type        = string
  default     = null
}

variable "log_level" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine.html#log_level"
  type        = string
  default     = null
}
