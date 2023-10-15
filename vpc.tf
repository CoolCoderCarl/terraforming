resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public_subnets" {
  #  count      = length(var.public_subnet_cidrs)
  vpc_id                  = aws_vpc.main.id
  map_public_ip_on_launch = "true"
  cidr_block              = var.public_subnet_cidrs

  tags = {
    Name = "Public Subnet"
  }
}

resource "aws_subnet" "private_subnets" {
  #  count      = length(var.private_subnet_cidrs)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_cidrs

  tags = {
    Name = "Private Subnet"
    #Name = "Private Subnet ${count.index + 1}"
  }
}

