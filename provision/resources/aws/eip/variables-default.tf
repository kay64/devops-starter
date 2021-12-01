variable "managed_by" {
  description = "String value for ManagedBy tag. Defaults 'terraform'."
  type        = string
  default     = "terraform"
}

variable "vpc" {
  description = "String value for ManagedBy tag. Defaults 'terraform'."
  type        = bool
  default     = true
}
