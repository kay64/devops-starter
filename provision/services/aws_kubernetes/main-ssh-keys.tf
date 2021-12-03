module "worker_keys" {
  source = "../../resources/common/rsa_keys"
}

module "worker_key_pair" {
  source     = "../../resources/aws/key_pair"
  name       = "${var.name}-worker"
  public_key = module.worker_keys.public_authorized_key
}
