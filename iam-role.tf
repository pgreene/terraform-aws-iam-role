resource "aws_iam_role" "general" {
  name = var.name
  description = var.description
  force_detach_policies = var.force_detach_policies
  managed_policy_arns = var.managed_policy_arns
  max_session_duration = var.max_session_duration
  path = var.path
  permissions_boundary = var.permissions_boundary
  assume_role_policy = var.assume_role_policy
  tags = var.tags
}