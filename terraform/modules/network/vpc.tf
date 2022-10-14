data "aws_availability_zones" "availability_zones" {
  state = "available"
}

resource "aws_vpc" "vpc" {
  cidr_block    = local.vpc_cidr

  tags = {
    Name        = var.vpc_name
  }
}

resource "aws_subnet" "public_subnet" {
  count = 3
  vpc_id = aws_vpc.vpc.id
  cidr_block = cidrsubnet(aws_vpc.vpc.cidr_block, 8, count.index + 1)
  availability_zone = data.aws_availability_zones.availability_zones.names[count.index]
  map_public_ip_on_launch = true
  tags = {
    Name        = "${var.vpc_name}-public"
  }
}