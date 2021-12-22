variable "name" {
  description = "Cluster friendly name. Prefer kebab string."
  type        = string
}

variable "subnet_ids" {
  description = "IDs of subnet where nodes placed on."
  type        = list(string)
}

variable "size_min" {
  description = "Minimum number of nodes in group."
  type        = number
}

variable "size_max" {
  description = "Maximum number of nodes in group."
  type        = number
}

variable "size_desired" {
  description = "Desired number of nodes in group."
  type        = number
}

variable "allowed_security_group_ids" {
  description = "Allowed SG IDs."
  type        = list(string)
}
