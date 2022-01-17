resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.neo_vpc.id

  tags = {
    Name = "Internet Gatway Neo"
  }
}