variable "name" {
  description = "Role friendly name. Prefer underscored string."
  type        = string
}

variable "attached_policy_arns" {
  description = "Arns of attached policies."
  type        = list(string)
}

variable "principal" {
  type = string
}
