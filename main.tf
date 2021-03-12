resource "aws_vpc" "VPC" {
  cidr_block = var.cidr_vpc
  
  tags = {
    Name = var.vpc_name
  }
}

locals {
  addrs_by_idx  = cidrsubnets(var.cidr_vpc, var.networks[*].new_bits...)
  addrs_by_name = { for i, n in var.networks : n.name => local.addrs_by_idx[i] if n.name != null }
  network_objs = [for i, n in var.networks : {
    name       = n.name
    new_bits   = n.new_bits
    cidr_block = n.name != null ? local.addrs_by_idx[i] : tostring(null)
  }]
}

resource "aws_subnet" "public-subnet" {
  count = length(local.addrs_by_idx)
  vpc_id     = aws_vpc.VPC.id
  cidr_block = element(var.addrs_by_idx, index.count-1)
  availability_zone = var.zone
  
  tags = {
    Name = "public-subnet"
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
    Name = "default-route"
  }
}