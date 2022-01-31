

################################
## VPC
################################

output "vpc_id" {
  value       = aws_vpc.main.id
  description = "vpc id"
  sensitive   = false
}
output "vpc_arn" {
  value       = aws_vpc.main.arn
  description = "vpc arn"
  sensitive   = false
}
output "vpc_instance_tenancy" {
  value       = aws_vpc.main.instance_tenancy
  description = "vpc instance_tenancy"
  sensitive   = false
}
output "vpc_enable_dns_support" {
  value       = aws_vpc.main.enable_dns_support
  description = "vpc enable_dns_support"
  sensitive   = false
}
output "vpc_enable_dns_hostnames" {
  value       = aws_vpc.main.enable_dns_hostnames
  description = "vpc enable_dns_hostnames"
  sensitive   = false
}
output "vpc_enable_classiclink" {
  value       = aws_vpc.main.enable_classiclink
  description = "vpc enable_classiclink"
  sensitive   = false
}
output "vpc_default_route_table_id" {
  value       = aws_vpc.main.default_route_table_id
  description = "vpc default_route_table_id"
  sensitive   = false
}
output "vpc_main_route_table_id" {
  value       = aws_vpc.main.main_route_table_id
  description = "vpc main_route_table_id"
  sensitive   = false
}
output "vpc_default_network_acl_id" {
  value       = aws_vpc.main.default_network_acl_id
  description = "vpc default_network_acl_id"
  sensitive   = false
}
output "vpc_default_security_group_id" {
  value       = aws_vpc.main.default_security_group_id
  description = "vpc default_security_group_id"
  sensitive   = false
}


################################
## GW1
################################
output "aws_nat_gateway_gw1_id" {
  value       = aws_nat_gateway.gw1.id
  description = "internet gateway id"
  sensitive   = false
}
output "aws_nat_gateway_gw1_allocation_id" {
  value       = aws_nat_gateway.gw1.allocation_id
  description = "gateway_nat1_allocation_id"
  sensitive   = false
}
output "aws_nat_gateway_gw1_subnet_id" {
  value       = aws_nat_gateway.gw1.subnet_id
  description = "gateway_nat1_subnet_id"
  sensitive   = false
}
output "aws_nat_gateway_gw1_private_ip" {
  value       = aws_nat_gateway.gw1.private_ip
  description = "gateway_nat1_private_ip"
  sensitive   = false
}
output "aws_nat_gateway_gw1_public_ip" {
  value       = aws_nat_gateway.gw1.public_ip
  description = "gateway_nat1_public_ip"
  sensitive   = false
}
output "aws_nat_gateway_gw1_tags_all" {
  value       = aws_nat_gateway.gw1.tags_all
  description = "gateway_nat1_tags_all"
  sensitive   = false
}


################################
## GW2
################################

output "aws_nat_gateway_gw2_id" {
  value       = aws_nat_gateway.gw2.id
  description = "internet gateway id"
  sensitive   = false
}
output "aws_nat_gateway_gw2_allocation_id" {
  value       = aws_nat_gateway.gw2.allocation_id
  description = "gateway_gw2_allocation_id"
  sensitive   = false
}
output "aws_nat_gateway_gw2_subnet_id" {
  value       = aws_nat_gateway.gw2.subnet_id
  description = "gateway_gw2_subnet_id"
  sensitive   = false
}
output "aws_nat_gateway_gw2_private_ip" {
  value       = aws_nat_gateway.gw2.private_ip
  description = "gateway_gw2_private_ip"
  sensitive   = false
}
output "aws_nat_gateway_gw2_public_ip" {
  value       = aws_nat_gateway.gw2.public_ip
  description = "gateway_gw2_public_ip"
  sensitive   = false
}
output "aws_nat_gateway_gw2_tags_all" {
  value       = aws_nat_gateway.gw2.tags_all
  description = "gateway_gw2_tags_all"
  sensitive   = false
}




################################
## GW2
################################

output "internet_gateway_id" {
  value       = aws_internet_gateway.main.id
  description = "internet gateway id"
  sensitive   = false
}
output "internet_gateway_arn" {
  value       = aws_internet_gateway.main.arn
  description = "internet gateway arn"
  sensitive   = false
}
output "internet_gateway_owner_id" {
  value       = aws_internet_gateway.main.owner_id
  description = "internet gateway owner_id"
  sensitive   = false
}
output "internet_gateway_tags_all" {
  value       = aws_internet_gateway.main.tags_all
  description = "internet gateway tags_all"
  sensitive   = false
}


################################
## EKS
################################



output "aws_eks_cluster_endpoint" {
  value = aws_eks_cluster.eks.endpoint
}
output "aws_eks_cluster_arn" {
  value = aws_eks_cluster.eks.arn
}
output "aws_eks_cluster_id" {
  value = aws_eks_cluster.eks.id
}
output "aws_eks_cluster_status" {
  value = aws_eks_cluster.eks.status
}
output "aws_eks_created_at" {
  value = aws_eks_cluster.eks.created_at
}
