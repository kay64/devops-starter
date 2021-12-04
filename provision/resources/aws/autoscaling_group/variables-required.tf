variable "subnet_ids" {
  description = "Subnet IDs"
  type        = list(string)
}

variable "name" {
  description = "Name of autoscaling group."
  type        = string
}

variable "instance_name" {
  description = "Name of autoscaling group."
  type        = string
}

variable "size_min" {
  type = number
}

variable "size_max" {
  type = number
}
