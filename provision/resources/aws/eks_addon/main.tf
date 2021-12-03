resource "aws_eks_addon" "example" {
  tags = {
    Name      = var.name
    ManagedBy = var.managed_by
  }

  resolve_conflicts        = var.resolve_conflicts
  cluster_name             = var.cluster_name
  addon_name               = var.addon_name
  service_account_role_arn = var.service_account_role_arn
}
