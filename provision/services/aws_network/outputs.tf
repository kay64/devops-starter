output "id" {
  value = module.network.id
}

output "private_subnet_ids" {
  value = module.private_subnet[*].id
}

output "public_subnet_ids" {
  value = module.public_subnet[*].id
}
