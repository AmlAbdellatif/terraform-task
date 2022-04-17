# resource "aws_route_table" "private" {
#   vpc_id = aws_vpc.lab1-vpc.id

#   route {
#     cidr_block = "0.0.0.0/0"

#     gateway_id = aws_nat_gateway.nat-1.id
#   }
#   #  depends_on = [
#   #     nat-1
#   #   ]

#   tags = {
#     Name = "private"
#   }
# }
resource "aws_route_table_association" "pub1" {
  subnet_id      = aws_subnet.pub-subnet1.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "pub2" {
  subnet_id      = aws_subnet.pub-subnet2.id
  route_table_id = aws_route_table.public.id
}


resource "aws_route_table_association" "p1" {
  subnet_id      = aws_subnet.pri-subnet1.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "p2" {
  subnet_id      = aws_subnet.pri-subnet2.id
  route_table_id = aws_route_table.private.id
}
