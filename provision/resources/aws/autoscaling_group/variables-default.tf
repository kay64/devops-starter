variable "instance_managed_by" {
  description = "Value of instance ManagedBy tag."
  type        = string
  default     = "autoscaling-group"
}
