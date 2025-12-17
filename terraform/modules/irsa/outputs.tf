output "alb_controller_role_arn" {
  value = aws_iam_role.alb_controller.arn
}

output "external_dns_role_arn" {
  value = aws_iam_role.external_dns.arn
}

output "external_secrets_role_arn" {
  value = aws_iam_role.external_secrets.arn
}

output "cluster_autoscaler_role_arn" {
  value = aws_iam_role.cluster_autoscaler.arn
}

output "argocd_image_updater_role_arn" {
  value = aws_iam_role.argocd_image_updater.arn
}

output "ebs_csi_role_arn" {
  value = aws_iam_role.ebs_csi.arn
}