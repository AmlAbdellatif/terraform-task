resource "aws_internet_gateway" "getway" {
  vpc_id = aws_vpc.lab1-vpc.id

  tags = {
    Name = "getway"
  }
}
