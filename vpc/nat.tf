resource "aws_eip" "natgweip" {

    vpc = true
  
}

resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.natgweip.id
  subnet_id     = aws_subnet.publicsubnet2.id
  depends_on = [aws_internet_gateway.gw]

  tags = {
    Name = "NAT gw"
  }
}

output "output_igw" {
  value = aws_internet_gateway.gw.id
}