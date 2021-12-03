output "name" {
  value = aws_eks_cluster.main.name
}

output "certificate_issuer" {
  value = aws_eks_cluster.main.identity[0].oidc[0].issuer
}
