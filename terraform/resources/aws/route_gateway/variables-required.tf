variable "route_table_id" {
  description = "The ID of the routing table to associate with."
  type        = string
}

variable "gateway_id" {
  description = "The gateway ID to create an association. Conflicts with subnet_id."
  type        = string
}
