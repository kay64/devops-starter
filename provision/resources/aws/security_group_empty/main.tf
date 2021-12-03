resource "aws_security_group" "main" {
  tags = {
    Name      = var.name
    ManagedBy = var.managed_by
  }

  vpc_id      = var.vpc_id
  name        = var.name
  description = var.description
}
