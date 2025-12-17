output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "oidc_provider" {
  value = module.eks.oidc_provider
}

output "oidc_provider_arn" {
  value = module.eks.oidc_provider_arn
}

output "oidc_provider_url" {
  value = module.eks.oidc_provider_url
}

output "irsa" {
  value = {
    alb_controller        = module.irsa.alb_controller_role_arn
    external_dns          = module.irsa.external_dns_role_arn
    external_secrets      = module.irsa.external_secrets_role_arn
    cluster_autoscaler    = module.irsa.cluster_autoscaler_role_arn
    argocd_image_updater  = module.irsa.argocd_image_updater_role_arn
    ebs_csi               = module.irsa.ebs_csi_role_arn
  }
}