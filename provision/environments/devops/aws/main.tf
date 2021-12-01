module "network" {
  source                   = "../../../services/aws_network"
  availability_zones_count = 2
  name                     = "demo-devops"
  network_cidr             = "10.91.0.0/16"
}

module "kubernetes" {
  source        = "../../../services/aws_kubernetes"
  name          = "demo-devops"
  subnet_ids    = module.network.private_subnet_ids
  instance_type = "t3.medium"
  size_desired  = 3
  size_max      = 5
  size_min      = 3
}
