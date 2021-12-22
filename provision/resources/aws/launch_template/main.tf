resource "aws_launch_template" "main" {
  tags = {
    Name      = var.name
    ManagedBy = var.managed_by
  }

  name                   = var.name
  image_id               = var.ami_id
  instance_type          = var.instance_type
  user_data              = var.user_data
  key_name               = var.key_name
  update_default_version = var.update_default_version

  network_interfaces {
    associate_public_ip_address = var.associate_public_ip_address
    security_groups             = var.security_group_ids
  }

  block_device_mappings {
    device_name = var.block_device_name
    ebs {
      volume_size = var.block_device_size
      volume_type = var.block_device_type
    }
  }

  dynamic "tag_specifications" {
    for_each = var.tag_specs

    content {
      resource_type = tag_specifications.value.resource_type
      tags          = tag_specifications.value.tags
    }
  }
}
