resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name      = "main"
    Terraform = "true"
  }
}

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