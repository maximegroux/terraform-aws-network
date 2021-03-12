region = "us-east-1"

zone = "us-east-1a"

vpc_name = "vpc-tf"

cidr_vpc = "10.0.0.0/16"

networks = [
    {
      name     = "public-a"
      new_bits = 8
    },
    {
      name     = "public-b"
      new_bits = 8
    },
  ]