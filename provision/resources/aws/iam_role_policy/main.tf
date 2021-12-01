resource "aws_iam_role_policy" "main" {
  name   = var.name
  policy = var.policy
  role   = var.role_name
}
