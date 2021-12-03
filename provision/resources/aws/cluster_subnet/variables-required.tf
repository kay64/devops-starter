variable "name" {
  description = "Sub-network friendly name. Prefer kebab string."
  type        = string
}

variable "cidr" {
  description = "The CIDR block for the subnet."
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID."
  type        = string
}

variable "availability_zone" {
  description = "The AZ for the subnet."
  type        = string
}

variable "cluster_name" {
  type = string
}
