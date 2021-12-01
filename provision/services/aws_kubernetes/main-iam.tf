module "iam_role_master" {
  source               = "../aws_iam_role"
  name                 = "${var.name}-eks-master"
  attached_policy_arns = var.iam_master_policy_arns
  principal            = "eks.amazonaws.com"
}

module "iam_role_worker" {
  source               = "../aws_iam_role"
  name                 = "${var.name}-eks-worker"
  attached_policy_arns = var.iam_worker_policy_arns
  policies             = var.iam_worker_policies
  principal            = "ec2.amazonaws.com"
}
