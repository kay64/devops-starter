variable "route_table_id" {
  description = "The ID of the routing table to associate with."
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID to create an association. Conflicts with gateway_id."
  type        = string
}
