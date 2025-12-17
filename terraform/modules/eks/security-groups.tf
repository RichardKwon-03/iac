resource "aws_security_group" "dev_nodes" {
  name        = "${var.cluster_name}-dev-nodes"
  description = "Additional security group for dev nodegroup"
  vpc_id      = var.vpc_id

  tags = {
    Name = "${var.cluster_name}-dev-nodes"
    Role = "eks-dev-nodegroup"
  }
}