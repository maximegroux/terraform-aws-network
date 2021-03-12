output "vpc_id" {
    value = aws_vpc.VPC.id
    description = "VPC id"
}

output "igw_id" {
    value = aws_internet_gateway.IGW-tf.id
    description = "IGW id"
}

output "route_table_id" {
    value = aws_route_table.public.id
    description = "route table id"
}