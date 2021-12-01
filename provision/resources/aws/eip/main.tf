resource "aws_eip" "main" {
  tags = {
    Name      = var.name
    ManagedBy = var.managed_by
  }
  vpc  = var.vpc
}
