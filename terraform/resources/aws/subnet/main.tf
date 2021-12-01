resource "aws_subnet" "main" {
  tags = {
    "Name"                              = var.name
    "ManagedBy"                         = "terraform"
    "kubernetes.io/cluster/${var.name}" = "owned"
  }

  cidr_block        = var.cidr
  vpc_id            = var.vpc_id
  availability_zone = var.availability_zone
}
