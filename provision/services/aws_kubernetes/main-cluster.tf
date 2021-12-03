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

/* TODO: complete hardening
module "cluster_node_group" {
  source            = "../../resources/aws/eks_node_group"
  ami_version       = var.ami_version
  ami_type          = var.ami_type
  cluster_name      = module.cluster.name
  instance_type     = var.instance_type
  name              = var.name
  node_role_arn     = module.iam_role_worker.arn
  size_desired      = var.size_desired
  size_max          = var.size_max
  size_min          = var.size_min
  subnet_ids        = var.subnet_ids
  ssh_key_pair_name = module.worker_key_pair.name
}
*/
