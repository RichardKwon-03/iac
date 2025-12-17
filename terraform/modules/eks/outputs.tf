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
  value = replace(module.eks.oidc_provider, "https://", "")
}

output "dev_node_security_group_id" {
  value = aws_security_group.dev_nodes.id
}