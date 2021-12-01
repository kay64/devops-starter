variable "managed_by" {
  description = "String value for ManagedBy tag. Defaults 'terraform'."
  type        = string
  default     = "terraform"
}

variable "enable_dns_support" {
  description = "A boolean flag to enable/disable DNS support in the VPC. Defaults true."
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "A boolean flag to enable/disable DNS hostnames in the VPC. Defaults true."
  type        = bool
  default     = true
}
