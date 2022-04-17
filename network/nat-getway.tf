resource "aws_nat_gateway" "nat-1" {
  allocation_id = aws_eip.eip1.id
  subnet_id     = aws_subnet.pub-subnet1.id

  tags = {
    Name = "nat-1"
  }
  depends_on = [aws_internet_gateway.getway]
}

resource "aws_nat_gateway" "nat-2" {
allocation_id = aws_eip.eip2.id
  subnet_id = aws_subnet.pub-subnet2.id

  tags = {
    Name = "nat-2"
  }
    depends_on = [aws_internet_gateway.getway]

}