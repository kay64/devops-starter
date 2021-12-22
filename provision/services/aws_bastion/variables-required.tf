variable "subnet_ids" {
  description = "Subnet IDs"
  type        = list(string)
}

variable "network_id" {
  description = "ID of VPC."
  type        = string
}

variable "allowed_cidr_blocks" {
  description = "List of allowed network CIDR blocks."
  type        = list(string)
}
