resource "aws_vpc" "main_vpc" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_tag
  }
}

resource "aws_subnet" "main" {
  count      =  length(var.subnet_cidr_block)
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.subnet_cidr_block[count.index]

  tags = {
    Name = var.subnet_tag[count.index]
  }
}
