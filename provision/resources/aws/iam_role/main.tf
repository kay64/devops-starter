resource "aws_iam_role" "main" {
  tags = {
    Name      = var.name
    ManagedBy = var.managed_by
  }

  name               = var.name
  assume_role_policy = var.assume_role_policy
}
