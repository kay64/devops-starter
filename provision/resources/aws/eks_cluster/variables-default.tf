variable "managed_by" {
  description = "String value for ManagedBy tag. Defaults 'terraform'."
  type        = string
  default     = "terraform"
}

variable "endpoint_public_access" {
  type    = bool
  default = false
}

variable "endpoint_private_access" {
  type    = bool
  default = true
}
