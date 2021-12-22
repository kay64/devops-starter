module "keys" {
  source = "../../resources/common/rsa_keys"
}

module "key_pair" {
  source     = "../../resources/aws/key_pair"
  name       = "${local.network_name}-bastion"
  public_key = module.keys.public_authorized_key
}

module "security_group" {
  source         = "../../resources/aws/security_group"
  description    = "${local.network_name} Bastion main security group."
  name           = "${local.network_name}-bastion"
  vpc_id         = var.network_id
  rules_inbound  = [
    {
      description        = "",
      port_from          = 22,
      port_to            = 22,
      cidr_blocks        = var.allowed_cidr_blocks,
      protocol           = "tcp"
      security_group_ids = []
    }
  ]
  rules_outbound = [
    {
      description        = "",
      port_from          = 0,
      port_to            = 0,
      cidr_blocks        = [data.aws_vpc.network.cidr_block],
      protocol           = "-1"
      security_group_ids = []
    }
  ]
}

module "launch_config" {
  source                      = "../../resources/aws/launch_configuration"
  name                        = "${local.network_name}-bastion"
  image_id                    = data.aws_ami.amazon_linux_2.image_id
  instance_type               = "t2.micro"
  key_name                    = module.key_pair.name
  security_group_ids          = [module.security_group.id]
  associate_public_ip_address = true
}

module "autoscaling_group" {
  source           = "../../resources/aws/autoscaling_group"
  instance_name    = "${local.network_name}-bastion"
  name             = "${local.network_name}-bastion"
  size_max         = 1
  size_min         = 1
  subnet_ids       = var.subnet_ids
  launch_config_id = module.launch_config.id
}
