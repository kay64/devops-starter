variable "name" {
  description = "Network friendly name."
  type        = string
}

variable "network_cidr" {
  description = "VPC cidr."
  type        = string
}

variable "availability_zones_count" {
  description = "Count of AZs."
  type        = number
}
