variable "name" {
  description = "Cluster friendly name. Prefer kebab string."
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS Cluster."
  type        = string
}

variable "addon_name" {
  description = "Name of the EKS add-on."
  type        = string
}

variable "service_account_role_arn" {
  description = "ARN of service account role."
  type        = string
}
