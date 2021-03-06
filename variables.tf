# Input variable definitions

variable "vpc_name" {
  description = "vpc_name"
  type = string
}

variable "cidr_vpc" {
  description = "cidr for VPC"
  type = string
}

variable "networks" {
  description = "value for subnets"
  type = list
}