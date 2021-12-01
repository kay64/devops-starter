locals {
  subnet_cidr        = [
  for i in range(var.availability_zones_count * 2) :
  cidrsubnet(var.network_cidr, var.availability_zones_count * 2, i)
  ]
  availability_zones = slice(data.aws_availability_zones.available.names, 0, var.availability_zones_count)
}
