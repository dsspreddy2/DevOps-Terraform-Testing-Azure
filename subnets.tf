resource "aws_subnet" "public-subnets" {
  count             = length(var.public_cidrs)
  vpc_id            = aws_vpc.default.id
  cidr_block        = element(var.public_cidrs, count.index)
  availability_zone = element(var.azs, count.index)
  tags = {
    Name = "${var.vpc_name}-Public subnet-${count.index + 1}"
  }
}

resource "aws_subnet" "private-subnets" {
  count             = length(var.private_cidrs)
  vpc_id            = aws_vpc.default.id
  cidr_block        = element(var.private_cidrs, count.index)
  availability_zone = element(var.azs, count.index)
  tags = {
    Name = "${var.vpc_name}-Private subnet-${count.index + 1}"
  }
}