variable "region" { type = string }
variable "cluster_name" { type = string }
variable "cluster_version" { type = string }

variable "vpc_id" { type = string }
variable "private_subnet_ids" { type = list(string) }
variable "public_subnet_ids" { type = list(string) }

variable "platform_node_instance_types" { type = list(string) }
variable "platform_node_desired" { type = number }
variable "platform_node_min" { type = number }
variable "platform_node_max" { type = number }

variable "dev_node_instance_types" { type = list(string) }
variable "dev_node_desired" { type = number }
variable "dev_node_min" { type = number }
variable "dev_node_max" { type = number }

variable "route53_zone_domain" { type = string }

variable "tags" { type = map(string) }