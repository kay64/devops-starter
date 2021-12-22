output "ssh_private_key" {
  value = module.keys.private_key
}

output "ssh_user" {
  value = "ec2-user"
}

output "security_group_id" {
  value = module.security_group.id
}
