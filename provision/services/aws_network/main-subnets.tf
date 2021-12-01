module "public_subnet" {
  count             = var.availability_zones_count
  source            = "../../resources/aws/subnet"
  availability_zone = local.availability_zones[count.index]
  cidr              = local.subnet_cidr[count.index]
  name              = "${var.name}-public-${local.availability_zones[count.index]}"
  vpc_id            = module.network.id
}

module "private_subnet" {
  count             = var.availability_zones_count
  source            = "../../resources/aws/subnet"
  availability_zone = local.availability_zones[count.index]
  cidr              = local.subnet_cidr[var.availability_zones_count + count.index]
  name              = "${var.name}-private-${local.availability_zones[count.index]}"
  vpc_id            = module.network.id
}
