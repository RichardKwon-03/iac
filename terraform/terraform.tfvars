region          = "ap-northeast-2"
cluster_name    = "mycluster"
cluster_version = "1.34"

vpc_id = "vpc-0f5a35b6dd516c79c"

private_subnet_ids = [
  "subnet-0e49e0d6f8e518863",
  "subnet-069dcbd875616aadd",
]

public_subnet_ids = []

platform_node_instance_types = ["t3.medium"]
platform_node_desired        = 2
platform_node_min            = 1
platform_node_max            = 4

dev_node_instance_types = ["t3.medium"]
dev_node_desired        = 1
dev_node_min            = 1
dev_node_max            = 4

route53_zone_domain = "myhosting"

tags = {
  ManagedBy = "terraform"
  Project   = "myproject"
  Cluster   = "mycluster"
  Env       = "shared"
}