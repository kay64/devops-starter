variable "name" {
  description = "Network name. Prefer kebab string."
  type        = string
}

variable "cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}
