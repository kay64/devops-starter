variable "managed_by" {
  description = "String value for ManagedBy tag. Defaults 'terraform'."
  type        = string
  default     = "terraform"
}

variable "timeout_create" {
  type    = string
  default = "10m"
}

variable "timeout_update" {
  type    = string
  default = "10m"
}

variable "timeout_delete" {
  type    = string
  default = "10m"
}
