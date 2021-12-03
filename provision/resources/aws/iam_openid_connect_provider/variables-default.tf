variable "client_id_list" {
  description = "A list of client IDs (also known as audiences)."
  type        = list(string)
  default     = ["sts.amazonaws.com"]
}

variable "managed_by" {
  description = "String value for ManagedBy tag. Defaults 'terraform'."
  type        = string
  default     = "terraform"
}
