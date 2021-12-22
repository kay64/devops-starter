locals {
  network_name = data.aws_vpc.network.tags["Name"]
}
