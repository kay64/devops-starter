resource "aws_vpc" "main" {
  tags = {
    "Name"                              = var.name
    "ManagedBy"                         = "terraform"
    "kubernetes.io/cluster/${var.name}" = "owned"
  }

  cidr_block           = var.cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support
}
