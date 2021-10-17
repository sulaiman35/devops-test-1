// VPC
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets[*]
}

output "public_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.public_subnets[*]
}

output "cidr" {
  value = var.cidr
}

output "private_route_table_ids" {
  value = module.vpc.private_route_table_ids[*]
}

output  "default_security_group_id" {
  value = module.vpc.default_security_group_id[*]
}
