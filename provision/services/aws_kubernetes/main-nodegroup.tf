module "launch_template" {
  source             = "../../resources/aws/launch_template"
  ami_id             = data.aws_ami.main.id
  instance_type      = var.instance_type
  name               = "${var.name}-eks"
  user_data          = base64encode(local.user_data)
  key_name           = module.worker_key_pair.name
  security_group_ids = [module.security_group_remote_access.id, data.aws_security_group.cluster.id]
  tag_specs          = [
    {
      resource_type = "instance"
      tags          = {
        Name      = "${var.name}-node-group-${var.name}"
        ManagedBy = "auto-scaling-group"
      }
    }
  ]
}

module "cluster_node_group" {
  source                     = "../../resources/aws/eks_node_group"
  launch_template_id         = module.launch_template.id
  launch_template_version    = module.launch_template.version
  cluster_name               = module.cluster.name
  name                       = var.name
  node_role_arn              = module.iam_role_worker.arn
  size_desired               = var.size_desired
  size_max                   = var.size_max
  size_min                   = var.size_min
  subnet_ids                 = var.subnet_ids
  ssh_key_pair_name          = module.worker_key_pair.name
  allowed_security_group_ids = var.allowed_security_group_ids
}
