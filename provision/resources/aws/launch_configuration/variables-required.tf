variable "image_id" {
  type        = string
  description = "The EC2 image ID to launch."
}

variable "instance_type" {
  type        = string
  description = "Instance type."
}

variable "key_name" {
  type        = string
  description = "Key pair name."
}

variable "name" {
  type        = string
  description = "Launch configuration name."
}
