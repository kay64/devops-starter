variable "managed_by" {
  description = "String value for ManagedBy tag. Defaults 'terraform'."
  type        = string
  default     = "terraform"
}

variable "additional_tags" {
  description = "Additional tags. Defaults empty map."
  type        = map(string)
  default     = null
}

variable "public" {
  type    = bool
  default = false
}
