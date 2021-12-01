variable "name" {
  description = "Internet gateway friendly name. Prefer underscored string."
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID."
  type        = string
}
