resource "aws_sfn_state_machine" "this" {

  name       = substr("${var.git}-${var.name}-${random_string.identifier.result}", 0, 80) # 80 character max length
  type       = var.type
  role_arn   = aws_iam_role.this.arn
  definition = jsonencode(var.definition)
  tags       = merge(local.tags, var.tags)

  dynamic "logging_configuration" {
    for_each = var.logging_enabled ? [true] : []

    content {
      log_destination        = aws_cloudwatch_log_group.this.arn
      include_execution_data = var.include_execution_data
      level                  = var.log_level
    }
  }

  dynamic "tracing_configuration" {
    for_each = var.tracing_enabled ? [true] : []
    content {
      enabled = true
    }
  }

}