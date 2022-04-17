resource "aws_eip" "eip1" {
  depends_on = [aws_internet_gateway.getway]
  vpc        = true
}

resource "aws_eip" "eip2" {
  depends_on = [aws_internet_gateway.getway]
  vpc        = true
}
