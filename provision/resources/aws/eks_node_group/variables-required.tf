variable "cluster_name" {
  description = "The name EKS cluster."
  type        = string
}

variable "name" {
  description = "The name of node group."
  type        = string
}

variable "subnet_ids" {
  description = "IDs of subnets in which nodes will be provisioned."
  type        = list(string)
}

variable "node_role_arn" {
  description = "ARN of IAM Role attached to each node."
  type        = string
}

variable "size_min" {
  description = "Minimum number of nodes in group."
  type        = number
}

variable "size_max" {
  description = "Maximum number of nodes in group."
  type        = number
}

variable "size_desired" {
  description = "Desired number of nodes in group."
  type        = number
}

#variable "ami_version" {
#  description = "Version of AMI image."
#  type        = string
#}
#
#variable "ami_type" {
#  description = "Type of AMI image."
#  type        = string
#}
#
#variable "instance_type" {
#  description = "EC2 instance type."
#  type        = string
#}

variable "ssh_key_pair_name" {
  description = "Key pair name to use for ssh access."
  type        = string
}

variable "allowed_security_group_ids" {
  description = "IDs of security groups from which node will be allowed to be connected."
  type        = list(string)
}

variable "launch_template_id" {
  type = string
}

variable "launch_template_version" {
  type = string
}
