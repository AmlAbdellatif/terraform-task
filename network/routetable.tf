resource "aws_route_table" "public" {
  vpc_id = aws_vpc.lab1-vpc.id

  route {
    cidr_block = "0.0.0.0/0"

    gateway_id = aws_internet_gateway.getway.id
  }

  tags = {
    Name = "public"
  }
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.lab1-vpc.id

  route {
    cidr_block = "0.0.0.0/0"

    gateway_id = aws_nat_gateway.nat-1.id
  }
  #  depends_on = [
  #     nat-1
  #   ]

  tags = {
    Name = "private"
  }
}

# resource "aws_route_table" "private2" {
#   vpc_id = aws_vpc.lab1-vpc.id

#   route {
#     cidr_block = "0.0.0.0/0"

#     gateway_id = aws_internet_gateway.nat-2.id
#   }

#   tags = {
#     Name = "private2"
#   }
# }






