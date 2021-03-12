region = "us-east-1"

vpc_name = "vpc-tf"

cidr_vpc = "10.0.0.0/16"

networks = [
    {
      name     = "public-a"
      zone     = "us-east-1a"
      new_bits = 8
    },
    {
      name     = "public-b"
      zone     = "us-east-1b"
      new_bits = 8
    },
    {
      name     = "private-a"
      zone     = "us-east-1a"
      new_bits = 8
    },
    {
      name     = "private-b"
      zone     = "us-east-1b"
      new_bits = 8
    },
  ]