variable "name" {
  description = "Security Group name. Prefer kebab string."
  type        = string
}

variable "description" {
  description = "Security Group purpose description."
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID."
  type        = string
}
