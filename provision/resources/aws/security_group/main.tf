resource "aws_security_group" "main" {
  tags = {
    Name      = var.name
    ManagedBy = var.managed_by
  }

  vpc_id      = var.vpc_id
  name        = var.name
  description = var.description

  dynamic "ingress" {
    for_each = var.rules_inbound
    content {
      security_groups = ingress.value.security_group_ids
      from_port       = ingress.value.port_from
      to_port         = ingress.value.port_to
      protocol        = ingress.value.protocol
      cidr_blocks     = ingress.value.cidr_blocks
      description     = ingress.value.description
    }
  }

  dynamic "egress" {
    for_each = var.rules_outbound
    content {
      security_groups = egress.value.security_group_ids
      from_port       = egress.value.port_from
      to_port         = egress.value.port_to
      protocol        = egress.value.protocol
      cidr_blocks     = egress.value.cidr_blocks
      description     = egress.value.description
    }
  }
}
