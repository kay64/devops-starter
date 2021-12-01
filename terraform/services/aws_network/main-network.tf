module "network" {
  source = "../../resources/aws/network"
  name   = var.name
  cidr   = var.network_cidr
}
