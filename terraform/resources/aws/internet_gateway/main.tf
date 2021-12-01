resource "aws_internet_gateway" "main" {
  tags   = {
    "Name"      = var.name
    "ManagedBy" = var.managed_by
  }
  vpc_id = var.vpc_id
}
