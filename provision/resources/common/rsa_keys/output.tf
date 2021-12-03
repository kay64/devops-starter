output "private_key" {
  value = tls_private_key.main.private_key_pem
}

output "public_key" {
  value = tls_private_key.main.public_key_pem
}

output "public_authorized_key" {
  value = tls_private_key.main.public_key_openssh
}
