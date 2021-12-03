module "public_subnet" {
  count             = var.availability_zones_count
  source            = "../../resources/aws/cluster_subnet"
  availability_zone = local.availability_zones[count.index]
  cidr              = local.subnet_cidr[count.index]
  name              = "${var.name}-public-${local.availability_zones[count.index]}"
  vpc_id            = module.network.id
  public            = true
  cluster_name      = var.name
}

module "private_subnet" {
  count             = var.availability_zones_count
  source            = "../../resources/aws/cluster_subnet"
  availability_zone = local.availability_zones[count.index]
  cidr              = local.subnet_cidr[var.availability_zones_count + count.index]
  name              = "${var.name}-private-${local.availability_zones[count.index]}"
  vpc_id            = module.network.id
  cluster_name      = var.name
}
