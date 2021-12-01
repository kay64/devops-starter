module "network" {
  source = "../../resources/aws/vpc"
  name   = var.name
  cidr   = var.network_cidr
}
