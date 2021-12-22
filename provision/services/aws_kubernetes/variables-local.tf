// Inspired by https://github.com/cloudposse/terraform-aws-eks-node-group/blob/master/ami.tf
locals {
  ami_kind        = split("_", var.ami_type)[0]
  ami_archs       = {
    "AL2_x86_64"          = "",
    "AL2_x86_64_GPU"      = "-gpu",
    "AL2_ARM_64"          = "-arm64",
    "BOTTLEROCKET_x86_64" = "x86_64",
    "BOTTLEROCKET_ARM_64" = "aarch64"
  }
  ami_name_format = {
    "AL2"          = "amazon-eks%s-node-%s"
    "BOTTLEROCKET" = "bottlerocket-aws-k8s-%s-%s-%s"
  }

  ami_versions = {
    "AL2" = (var.ami_version != null ? replace(var.ami_version, "/^(\\d+\\.\\d+)\\.\\d+-(\\d+)$/", "$1-v$2") : "${module.cluster.version}-*"),
    "BOTTLEROCKET" : (var.ami_version != null ? format("v%s", var.ami_version) : "*"),
  }
  ami_names    = {
    "AL2"          = format(local.ami_name_format["AL2"], local.ami_archs[var.ami_type], local.ami_versions[local.ami_kind]),
    "BOTTLEROCKET" = format(local.ami_name_format["BOTTLEROCKET"], module.cluster.version, local.ami_archs[var.ami_type], local.ami_versions[local.ami_kind]),
  }


  user_data = <<-EOF
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="==USERDATA=="
--==USERDATA==
Content-Type: text/x-shellscript; charset="us-ascii"
#!/bin/bash
/etc/eks/bootstrap.sh ${module.cluster.name}
--==USERDATA==--\
  EOF
}
