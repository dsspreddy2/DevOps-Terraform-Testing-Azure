resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.default.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default.id
  }

  tags = {
    Name = "${var.vpc_name}-Publicrt"
  }
}

resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.default.id
  tags = {
    Name = "${var.vpc_name}-Privatert"
  }
}


resource "aws_route_table_association" "public_subnets" {
  count          = 3
  subnet_id      = element(aws_subnet.public-subnets.*.id, count.index)
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "private_subnets" {
  count          = 3
  subnet_id      = element(aws_subnet.private-subnets.*.id, count.index)
  route_table_id = aws_route_table.private-rt.id
}
