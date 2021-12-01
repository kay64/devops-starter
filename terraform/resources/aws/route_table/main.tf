resource "aws_route_table" "main" {
  tags = {
    Name      = var.name
    ManagedBy = var.managed_by
  }

  vpc_id = var.vpc_id
}
