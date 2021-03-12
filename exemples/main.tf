provider "aws" {
  region = var.region
}

module "network" {
    source = "modules/aws-network"

    vpc_name = var.vpc_name
    zone_name = var.zone_name
    cidr_vpc = var.cidr_vpc
    cidr_blocks = var.cidr_blocks

    tags = {
        Terraform = "true"
        Environment = "dev"
    }
}