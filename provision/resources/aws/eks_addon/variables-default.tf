variable "managed_by" {
  description = "String value for ManagedBy tag. Defaults 'terraform'."
  type        = string
  default     = "terraform"
}

variable "resolve_conflicts" {
  type    = string
  default = "OVERWRITE"
}
