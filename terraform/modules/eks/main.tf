module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnet_ids

  enable_cluster_creator_admin_permissions = true
  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true

  cluster_endpoint_public_access_cidrs = [
    "myip/32"
  ]

  enable_irsa = true

  eks_managed_node_groups = {
    platform = {
      name           = "platform-ng"
      instance_types = var.platform_node_instance_types

      desired_size = var.platform_node_desired
      min_size     = var.platform_node_min
      max_size     = var.platform_node_max

      labels = {
        pool = "platform"
      }
    }

    dev = {
      name           = "dev-ng"
      instance_types = var.dev_node_instance_types

      desired_size = var.dev_node_desired
      min_size     = var.dev_node_min
      max_size     = var.dev_node_max

      labels = {
        pool = "dev"
      }

      taints = [
        {
          key    = "pool"
          value  = "dev"
          effect = "NO_SCHEDULE"
        }
      ]

      additional_security_group_ids = [
        aws_security_group.dev_nodes.id
      ]
    }
  }
}