module "openid_provider" {
  source          = "../../resources/aws/iam_openid_connect_provider"
  name            = var.name
  thumbprint_list = [data.tls_certificate.cluster_issuer.certificates[0].sha1_fingerprint]
  url             = module.cluster.certificate_issuer
}

module "iam_role_cni" {
  source             = "../../resources/aws/iam_role"
  name               = "${var.name}-eks-cni"
  assume_role_policy = data.aws_iam_policy_document.cni_role_trust_policy.json
}

module "iam_role_cni_attachment" {
  source     = "../../resources/aws/iam_role_policy_attachment"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role_name  = module.iam_role_cni.name
}


