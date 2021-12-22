module "security_group_remote_access" {
  source        = "../../resources/aws/security_group"
  description   = "Worker remote access."
  name          = "${var.name}-worker-remote-access"
  vpc_id        = data.aws_vpc.current.id
  rules_inbound = [
    {
      protocol           = "tcp"
      security_group_ids = var.allowed_security_group_ids
      port_from          = 22
      port_to            = 22
      cidr_blocks        = []
      description        = ""
    }
  ]
}
