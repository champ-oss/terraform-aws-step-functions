output "role_name" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role#name"
  value       = aws_iam_role.this.name
}

output "role_arn" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role#arn"
  value       = aws_iam_role.this.arn
}

output "sfn_arn" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine#arn"
  value       = aws_sfn_state_machine.this.arn
}

output "sfn_name" {
  description = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine#name"
  value       = aws_sfn_state_machine.this.name
}
