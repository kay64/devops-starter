variable "name" {
  description = "Cluster friendly name. Prefer underscored string."
  type        = string
}

variable "master_role_arn" {
  description = "ARN of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf."
  type        = string
}

variable "subnet_ids" {
  description = "IDs of subnet where nodes placed on."
  type        = list(string)
}
