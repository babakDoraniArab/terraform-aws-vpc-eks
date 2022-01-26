################################
## GW1
################################
resource "aws_nat_gateway" "gw1" {
  allocation_id = aws_eip.nat1.id
  subnet_id     = aws_subnet.public_1.id

  tags = {
    Name = "gw1 NAT1"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.main]
}


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

resource "aws_nat_gateway" "gw2" {
  allocation_id = aws_eip.nat2.id
  subnet_id     = aws_subnet.public_2.id

  tags = {
    Name = "NAT2 gw2"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.main]
}


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