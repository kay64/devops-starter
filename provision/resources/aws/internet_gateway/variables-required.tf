variable "name" {
  description = "Internet gateway friendly name. Prefer kebab string."
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID."
  type        = string
}
