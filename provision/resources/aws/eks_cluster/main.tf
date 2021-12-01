resource "aws_eks_cluster" "main" {
  tags = {
    "Name"      = var.name
    "ManagedBy" = var.managed_by
  }
  name = var.name

  role_arn = var.master_role_arn
  vpc_config {
    subnet_ids = var.subnet_ids
  }
}
