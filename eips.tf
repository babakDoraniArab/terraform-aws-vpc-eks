resource "aws_eip" "nat1" {
  #for availablity zone 1 ( public1 and private1 )
  depends_on = [aws_internet_gateway.main]

  tags = {
    Terraform = "true"
  }
}
resource "aws_eip" "nat2" {
  #for availablity zone 2 ( public2 and private2 )
  depends_on = [aws_internet_gateway.main]

  tags = {
    Terraform = "true"
  }
} 