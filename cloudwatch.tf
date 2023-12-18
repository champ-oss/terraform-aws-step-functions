resource "aws_cloudwatch_log_group" "this" {
  name              = "/aws/vendedlogs/states/${var.git}-${var.name}-${random_string.identifier.result}"
  retention_in_days = var.retention_in_days
  tags              = merge(local.tags, var.tags)
}
