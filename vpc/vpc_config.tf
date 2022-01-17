resource "aws_vpc" "neo_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "Neo VPC"
  }
}

output "output_vpc_id" {
    value = aws_vpc.neo_vpc.id
  
}

resource "aws_subnet" "publicsubnet1" {
  vpc_id     = aws_vpc.neo_vpc.id
  cidr_block = var.public_subnet_1
  availability_zone = var.availability_zone_A

  tags = {
    Name = "Public Subnet-1_Neo"
  }
}

output "outputpublicsubnet1" {
    value = aws_subnet.publicsubnet1.id
  
}

resource "aws_subnet" "publicsubnet2" {
  vpc_id     = aws_vpc.neo_vpc.id
  cidr_block = var.public_subnet_2
  availability_zone = var.availability_zone_B

  tags = {
    Name = "Public Subnet-2_Neo"
  }
}

output "outputpublicsubnet2" {
    value = aws_subnet.publicsubnet2.id
  
}

resource "aws_subnet" "privatesubnet3" {
  vpc_id     = aws_vpc.neo_vpc.id
  cidr_block = var.private_subnet_3
  availability_zone = var.availability_zone_A

  tags = {
    Name = "Private Subnet-3_Neo"
  }
}

output "outputprivatesubnet3" {
    value = aws_subnet.privatesubnet3.id
  
}

resource "aws_subnet" "privatesubnet4" {
  vpc_id     = aws_vpc.neo_vpc.id
  cidr_block = var.private_subnet_4
  availability_zone = var.availability_zone_B

  tags = {
    Name = "Private Subnet-4_Neo"
  }
}

output "outputprivatesubnet4" {
    value = aws_subnet.privatesubnet4.id
  
}

# RDS Instance Subnet Group
resource "aws_db_subnet_group" "rdsubnetgroup" {
  name       = "rds_subnet_group"
  subnet_ids = [aws_subnet.privatesubnet3.id, aws_subnet.privatesubnet4.id]

  tags  = {
      Name = "My Subnet Group"
  }
}
output "out_rdssubnetgroup" {

  value = aws_db_subnet_group.rdsubnetgroup.id

}

