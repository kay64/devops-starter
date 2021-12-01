module "internet_gateway" {
  source = "../../resources/aws/internet_gateway"
  name   = var.name
  vpc_id = module.network.id
}

module "nat_eip" {
  source = "../../resources/aws/eip"
  name   = "${var.name}-nat-${local.availability_zones[0]}"
}

module "nat_gateway" {
  source        = "../../resources/aws/nat_gateway"
  name          = "${var.name}-${local.availability_zones[0]}"
  subnet_id     = module.public_subnet[0].id
  vpc_id        = module.network.id
  allocation_id = module.nat_eip.id
}
