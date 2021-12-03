resource "aws_key_pair" "main" {
  tags = {
    Name      = var.name
    ManagedBy = var.managed_by
  }

  key_name   = var.name
  public_key = var.public_key
}
