# Input variable definitions

variable "region" {
  description = "Name of region"
  type = string
  default = "us-east-1"
}

variable "vpc_name" {
  description = "vpc_name"
  type = string
  default = "vpc-tf"
}

variable "cidr_vpc" {
  description = "cidr for VPC"
  type = string
  default = "10.0.1.0/24"
}

variable "cidr_public" {
  description = "cidr for VPC"
  type = string
  default = "10.0.0.0/16"
}
variable "cidr_private" {
  description = "cidr for VPC"
  type = string
  default = "10.0.2.0/24"
}

# variable "vpc_name" {
#   description = "Name of VPC"
#   type        = string
#   default     = "module-vpc"
# }

# variable "vpc_cidr" {
#   description = "CIDR block for VPC"
#   type        = string
#   default     = "10.0.0.0/16"
# }

# variable "vpc_azs" {
#   description = "Availability zones for VPC"
#   type        = list(string)
#   default     = ["us-east-2a", "us-east-2b", "us-east-2c"]
# }

# variable "vpc_private_subnets" {
#   description = "Private subnets for VPC"
#   type        = list(string)
#   default     = ["10.0.1.0/24", "10.0.2.0/24"]
# }

# variable "vpc_public_subnets" {
#   description = "Public subnets for VPC"
#   type        = list(string)
#   default     = ["10.0.3.0/24", "10.0.4.0/24"]
# }

# variable "vpc_enable_nat_gateway" {
#   description = "Enable NAT gateway for VPC"
#   type        = bool
#   default     = true
# }

# variable "vpc_tags" {
#   description = "Tags to apply to resources created by VPC module"
#   type        = map(string)
#   default = {
#     Terraform   = "true"
#     Environment = "dev"
#   }
# }