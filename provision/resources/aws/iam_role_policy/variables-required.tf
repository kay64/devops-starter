variable "name" {
  description = "Policy friendly name. Prefer kebab string."
  type        = string
}

variable "policy" {
  description = "The inline policy document. This is a JSON formatted string. For more information about building IAM policy documents with Terraform, see the AWS IAM Policy Document Guide."
  type        = string
}

variable "role_name" {
  description = "The name of the IAM role to which the policy should be applied."
  type        = string
}
