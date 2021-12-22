variable "name" {
  description = "Name of the template."
  type        = string
}

variable "user_data" {
  description = "User data."
  type        = string
}

variable "ami_id" {
  description = "ID of AMI image."
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance."
  type        = string
}

variable "key_name" {
  type = string
}
