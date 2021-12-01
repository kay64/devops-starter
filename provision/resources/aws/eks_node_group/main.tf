resource "aws_eks_node_group" "main" {
  cluster_name    = var.cluster_name
  node_group_name = var.name
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.subnet_ids
  release_version = var.ami_version
  ami_type        = var.ami_type

  instance_types = [var.instance_type]

  scaling_config {
    desired_size = var.size_desired
    max_size     = var.size_max
    min_size     = var.size_min
  }

  tags = {
    Name      = var.name
    ManagedBy = var.managed_by
  }
}
