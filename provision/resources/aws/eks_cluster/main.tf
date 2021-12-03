resource "aws_eks_cluster" "main" {
  tags = {
    Name      = var.name
    ManagedBy = var.managed_by
  }

  name = var.name


  role_arn = var.role_arn
  vpc_config {
    subnet_ids              = var.subnet_ids
    endpoint_public_access  = var.endpoint_public_access
    endpoint_private_access = var.endpoint_private_access
  }
}
