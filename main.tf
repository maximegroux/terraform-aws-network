resource "aws_vpc" "VPC" {
  cidr_block = var.cidr_vpc
  
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.VPC.id
  cidr_block = var.cidr_public
  availability_zone = var.vpc_name
  
  tags = {
    Name = "public-tf"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.VPC.id
  cidr_block = var.cidr_private
  availability_zone = var.vpc_name
  
  tags = {
    Name = "private-tf"
  }
}

resource "aws_internet_gateway" "IGW-tf" {
  vpc_id = aws_vpc.VPC.id

  tags = {
    Name = "igw-tf"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.VPC.id
  route {
  cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.IGW-tf.id
}

  tags = {
    Name = "public-tf"
  }
}