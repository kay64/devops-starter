variable "security_group_ids" {
  type        = list(string)
  description = "A list of associated security group IDS."
  default     = []
}

variable "associate_public_ip_address" {
  type        = bool
  description = "Whether to associate a public ip address with an instance in a VPC."
  default     = false
}

