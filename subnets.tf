resource "aws_subnet" "public_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.0.0/18"
  #AZ availability zone
  availability_zone       = "eu-west-1a"
  map_public_ip_on_launch = true

  tags = {
    Name                        = "public-eu-west-1a"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
    Terraform                   = "true"
  }
}


resource "aws_subnet" "public_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.64.0/18"
  #AZ availability zone
  availability_zone       = "eu-west-1b"
  map_public_ip_on_launch = true

  tags = {
    Name                        = "public-eu-west-1b"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
    Terraform                   = "true"
  }
}



resource "aws_subnet" "private_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.128.0/18"
  #AZ availability zone
  availability_zone = "eu-west-1a"


  tags = {
    Name                              = "private-eu-west-1a"
    "kubernetes.io/cluster/eks"       = "shared"
    "kubernetes.io/role/internal-elb" = 1
    Terraform                         = "true"
  }
}


resource "aws_subnet" "private_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.192.0/18"
  #AZ availability zone
  availability_zone = "eu-west-1b"


  tags = {
    Name                              = "private-eu-west-1b"
    "kubernetes.io/cluster/eks"       = "shared"
    "kubernetes.io/role/internal-elb" = 1
    Terraform                         = "true"
  }
}