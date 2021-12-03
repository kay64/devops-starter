data "aws_subnet" "first" {
  id = var.subnet_ids[0]
}

data "aws_vpc" "current" {
  id = data.aws_subnet.first.vpc_id
}

data "tls_certificate" "cluster_issuer" {
  url = module.cluster.certificate_issuer
}

data "aws_iam_policy_document" "cni_role_trust_policy" {
  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]
    effect  = "Allow"

    condition {
      test     = "StringEquals"
      variable = "${replace(module.openid_provider.url, "https://", "")}:sub"
      values   = ["system:serviceaccount:kube-system:aws-node"]
    }

    principals {
      identifiers = [module.openid_provider.arn]
      type        = "Federated"
    }
  }
}

output "test" {
  value = ""
}

