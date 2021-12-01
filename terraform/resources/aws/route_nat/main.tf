resource "aws_route" "main" {
  route_table_id         = var.route_table_id
  nat_gateway_id         = var.gateway_id
  destination_cidr_block = var.destination_cidr_block
}
