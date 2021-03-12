# Input variable definitions

variable "zone" {
  description = "availability zone for subnet"
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

variable "networks" {
  description = "value for subnets"
  type = list
}