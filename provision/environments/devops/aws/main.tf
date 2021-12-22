module "network" {
  source                   = "../../../services/aws_network"
  availability_zones_count = 2
  name                     = "demo-devops"
  network_cidr             = "10.91.0.0/16"
}

module "bastion" {
  source              = "../../../services/aws_bastion"
  network_id          = module.network.id
  allowed_cidr_blocks = ["89.64.59.163/32"]
  subnet_ids          = module.network.public_subnet_ids
}

module "kubernetes" {
  source                     = "../../../services/aws_kubernetes"
  name                       = "demo-devops"
  subnet_ids                 = module.network.private_subnet_ids
  instance_type              = "t3.medium"
  size_desired               = 1
  size_max                   = 1
  size_min                   = 1
  allowed_security_group_ids = [module.bastion.security_group_id]
}

output "test" {
  value = module.kubernetes.test
}
