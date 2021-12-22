variable "managed_by" {
  description = "String value for ManagedBy tag. Defaults 'terraform'."
  type        = string
  default     = "terraform"
}

variable "rules_inbound" {
  description = "List of inbound rules."
  type        = list(object({
    description = string,
    port_from   = string,
    port_to     = number,
    cidr_blocks = list(string),
    protocol    = string,
    security_group_ids = set(string)
  }))
  default     = []
}

variable "rules_outbound" {
  description = "List of outbound rules."
  type        = list(object({
    description        = string,
    port_from          = string,
    port_to            = number,
    cidr_blocks        = list(string),
    protocol           = string,
    security_group_ids = set(string)
  }))
  default     = []
}
