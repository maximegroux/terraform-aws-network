# Input variable definitions

variable "region" {
  description = "Name of region"
  type = string
}

variable "vpc_name" {
  description = "vpc_name"
  type = string
}

variable "cidr_vpc" {
  description = "cidr for VPC"
  type = string
}

variable "cidr_blocks" {
  description = "cidr for subnets"
  type = list
}