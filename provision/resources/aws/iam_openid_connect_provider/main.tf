resource "aws_iam_openid_connect_provider" "main" {
  tags = {
    Name      = var.name
    ManagedBy = var.managed_by
  }

  client_id_list  = var.client_id_list
  thumbprint_list = var.thumbprint_list
  url             = var.url
}
