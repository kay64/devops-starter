variable "name" {
  description = "NAT gateway friendly name. Prefer kebab string."
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID."
  type        = string
}

variable "subnet_id" {
  description = "The Subnet ID of the subnet in which the NAT gateway is placed."
  type        = string
}

variable "allocation_id" {
  description = "The Allocation ID of the Elastic IP address for the gateway. Required for connectivity_type of public."
  type        = string
}
