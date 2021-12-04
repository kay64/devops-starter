module "keys" {
  source = "../../resources/common/rsa_keys"
}

module "key_pair" {
  source     = "../../resources/aws/key_pair"
  name       = "${var.network_name}-bastion"
  public_key = module.keys.private_key
}

module "autoscaling_group" {
  source        = "../../resources/aws/autoscaling_group"
  instance_name = "${var.network_name}-bastion"
  name          = "${var.network_name}-bastion"
  size_max      = 1
  size_min      = 1
  subnet_ids    = var.subnet_ids
}
