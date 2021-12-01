resource "aws_route_table_association" "main" {
  route_table_id = var.route_table_id
  gateway_id     = var.gateway_id
}
