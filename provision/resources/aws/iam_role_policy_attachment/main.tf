resource "aws_iam_role_policy_attachment" "main" {
  policy_arn = var.policy_arn
  role       = var.role_name
}
