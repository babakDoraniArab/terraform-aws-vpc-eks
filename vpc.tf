resource "aws_vpc" "main" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"

  enable_dns_support               = true
  enable_dns_hostnames             = true
  enable_classiclink               = false
  enable_classiclink_dns_support   = false
  assign_generated_ipv6_cidr_block = false
  tags = {
    Name      = "main"
    Terraform = "true"
  }
}

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