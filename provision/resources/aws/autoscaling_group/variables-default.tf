variable "instance_managed_by" {
  description = "Value of instance ManagedBy tag."
  type        = string
  default     = "autoscaling-group"
}

variable "launch_config_id" {
  description = "ID of launch configuration."
  type        = string
  default     = null
}
