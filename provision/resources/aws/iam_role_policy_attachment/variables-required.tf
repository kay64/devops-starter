variable "policy_arn" {
  description = "The ARN of the policy you want to apply."
  type        = string
}

variable "role_name" {
  description = "The name of the IAM role to which the policy should be applied."
  type        = string
}
