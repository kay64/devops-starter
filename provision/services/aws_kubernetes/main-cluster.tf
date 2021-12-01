module "cluster" {
  source          = "../../resources/aws/eks_cluster"
  name            = var.name
  master_role_arn = module.iam_role_master.arn
  subnet_ids      = var.subnet_ids
}

/* TODO: complete hardening
module "cluster_node_group" {
  source        = "../../resources/aws/eks_node_group"
  ami_version   = var.ami_version
  ami_type      = var.ami_type
  cluster_name  = module.cluster.name
  instance_type = var.instance_type
  name          = var.name
  node_role_arn = module.iam_role_worker.arn
  size_desired  = var.size_desired
  size_max      = var.size_max
  size_min      = var.size_min
  subnet_ids    = var.subnet_ids
}
*/
