module "internet_gateway" {
  source = "../../resources/aws/internet_gateway"
  name   = var.name
  vpc_id = module.network.id
}

module "nat_eip" {
  count  = var.availability_zones_count
  source = "../../resources/aws/eip"
  name   = "${var.name}-nat-${local.availability_zones[count.index]}"
}

module "nat_gateway" {
  count         = var.availability_zones_count
  source        = "../../resources/aws/nat_gateway"
  name          = "${var.name}-${local.availability_zones[count.index]}"
  subnet_id     = module.public_subnet[count.index].id
  vpc_id        = module.network.id
  allocation_id = module.nat_eip[count.index].id
}
