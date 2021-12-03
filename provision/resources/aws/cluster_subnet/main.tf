locals {
  prefix = var.public ? "" : "internal-"
}

resource "aws_subnet" "main" {
  tags = merge(
  var.additional_tags,
  {
    "Name"                                      = var.name
    "ManagedBy"                                 = var.managed_by
    "kubernetes.io/cluster/${var.cluster_name}" = "owned"
    "kubernetes.io/role/${local.prefix}elb"     = 1
  })

  cidr_block        = var.cidr
  vpc_id            = var.vpc_id
  availability_zone = var.availability_zone
}
