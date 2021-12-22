variable "managed_by" {
  type    = string
  default = "terraform"
}

variable "block_device_name" {
  type    = string
  default = "/dev/sda1"
}

variable "block_device_type" {
  type    = string
  default = "gp2"
}

variable "block_device_size" {
  type    = number
  default = 8
}

variable "tag_specs" {
  type = list(object({
    resource_type = string
    tags          = map(string)
  }))
}

variable "security_group_ids" {
  type    = list(string)
  default = []
}

variable "associate_public_ip_address" {
  type    = bool
  default = false
}

variable "update_default_version" {
  type    = bool
  default = true
}
