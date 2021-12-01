module "network" {
  source                   = "../../../services/aws_network"
  availability_zones_count = 2
  name                     = "devops"
  network_cidr             = "10.91.0.0/16"
}

output "test" {
  value = module.network.test
}
