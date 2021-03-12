provider "aws" {
  region = var.region
}

module "network" {
    source = "../"

    vpc_name = var.vpc_name
    zone = var.zone
    cidr_vpc = var.cidr_vpc
    networks = var.networks

    tags = {
        Terraform = "true"
        Environment = "dev"
    }
}