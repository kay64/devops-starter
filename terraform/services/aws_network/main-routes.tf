module "route_table_public" {
  source = "../../resources/aws/route_table"
  name   = "${var.name}-public"
  vpc_id = module.network.id
}

module "route_table_association_public" {
  count          = var.availability_zones_count
  source         = "../../resources/aws/route_table_association_subnet"
  route_table_id = module.route_table_public.id
  subnet_id      = module.public_subnet[count.index].id
}

module "route_table_association_internet_gateway" {
  source         = "../../resources/aws/route_table_association_gateway"
  gateway_id     = module.internet_gateway.id
  route_table_id = module.route_table_public.id
}

module "route_table_private" {
  source = "../../resources/aws/route_table"
  name   = "${var.name}-private"
  vpc_id = module.network.id
}

module "route_table_association_private" {
  count          = var.availability_zones_count
  source         = "../../resources/aws/route_table_association_subnet"
  route_table_id = module.route_table_private.id
  subnet_id      = module.private_subnet[count.index].id
}

module "route_nat" {
  source         = "../../resources/aws/route_nat"
  gateway_id     = module.nat_gateway.id
  route_table_id = module.route_table_private.id
}
