module "iam_role_control_plane" {
  source               = "../aws_iam_service_role"
  name                 = "${var.name}-eks-control-plane"
  attached_policy_arns = var.iam_control_plane_policy_arns
  principal            = "eks.amazonaws.com"
}

module "iam_role_worker" {
  source               = "../aws_iam_service_role"
  name                 = "${var.name}-eks-worker"
  attached_policy_arns = var.iam_worker_policy_arns
  principal            = "ec2.amazonaws.com"
}
