resource "aws_nat_gateway" "main" {
  tags              = {
    "Name"      = var.name
    "ManagedBy" = var.managed_by
  }
  connectivity_type = var.connectivity_type
  allocation_id     = var.allocation_id
  subnet_id         = var.subnet_id
}
