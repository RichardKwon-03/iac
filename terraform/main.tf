module "eks" {
  source = "./modules/eks"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  vpc_id             = var.vpc_id
  private_subnet_ids = var.private_subnet_ids

  platform_node_instance_types = var.platform_node_instance_types
  platform_node_desired        = var.platform_node_desired
  platform_node_min            = var.platform_node_min
  platform_node_max            = var.platform_node_max

  dev_node_instance_types = var.dev_node_instance_types
  dev_node_desired        = var.dev_node_desired
  dev_node_min            = var.dev_node_min
  dev_node_max            = var.dev_node_max
}

module "irsa" {
  source = "./modules/irsa"

  cluster_name      = var.cluster_name
  oidc_provider_arn = module.eks.oidc_provider_arn
  oidc_provider_url = module.eks.oidc_provider_url
}

module "addons" {
  source = "./modules/addons"

  cluster_name     = var.cluster_name
  ebs_csi_role_arn = module.irsa.ebs_csi_role_arn
}