variable "managed_by" {
  description = "String value for ManagedBy tag. Defaults 'terraform'."
  type        = string
  default     = "terraform"
}

variable "connectivity_type" {
  description = "Connectivity type for the gateway. Valid values are private and public. Defaults to public."
  type        = string
  default     = "public"
}
