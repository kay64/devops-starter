module "cluster" {
  source     = "../../resources/aws/eks_cluster"
  name       = var.name
  role_arn   = module.iam_role_control_plane.arn
  subnet_ids = var.subnet_ids
}

module "cluster_cni_addon" {
  source                   = "../../resources/aws/eks_addon"
  addon_name               = "vpc-cni"
  cluster_name             = module.cluster.name
  name                     = "${var.name}-vpc-cni"
  service_account_role_arn = module.iam_role_cni.arn
}
