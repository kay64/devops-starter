variable "name" {
  description = "Role friendly name. Prefer underscored string."
  type        = string
}

variable "assume_role_policy" {
  description = "Policy that grants an entity permission to assume the role."
  type        = string
}
