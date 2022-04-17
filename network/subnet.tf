resource "aws_subnet" "pub-subnet1" {
  vpc_id = aws_vpc.lab1-vpc.id

  cidr_block = var.pub_subnet1_cidr
  availability_zone = "${var.region}b"

  map_public_ip_on_launch = true

  tags = {
    Name = "public-${var.region}a"
  }
}

resource "aws_subnet" "pub-subnet2" {
  vpc_id = aws_vpc.lab1-vpc.id

  cidr_block = var.pub_subnet2_cidr

  availability_zone = "${var.region}c"

  map_public_ip_on_launch = true

  tags = {
    Name = "public-${var.region}b"

  }
}

resource "aws_subnet" "pri-subnet1" {
  vpc_id = aws_vpc.lab1-vpc.id

  cidr_block = var.pri_subnet1_cidr

  availability_zone = "${var.region}b"

  tags = {
    Name = "private-${var.region}b"

  }
}

resource "aws_subnet" "pri-subnet2" {
  vpc_id = aws_vpc.lab1-vpc.id

  cidr_block = var.pri_subnet2_cidr

  availability_zone = "${var.region}c"

  tags = {
    Name = "private-${var.region}c"
  }
}







































#  resource "aws_subnet" "pub-subnet1" {
#    vpc_id     = aws_vpc.lab1-vpc.id
#    cidr_block = "10.0.1.0/24"
#    availability_zone="eu-west-1a"
#    tags = {
#      Name = "pub-subnet1"
#    }
#  }

#  resource "aws_subnet" "pub-subnet2" {
#    vpc_id     = aws_vpc.lab1-vpc.id
#    cidr_block = "10.0.2.0/24"
#    availability_zone="eu-west-1b"
#    tags = {
#      Name = "pub-subnet2"
#    }
#  }

#  resource "aws_vpc_ipv4_cidr_block_association" "pub-subnet1" {
#    vpc_id     = aws_vpc.lab1-vpc.id
#    cidr_block = "172.2.0.0/16"
#  }

#  resource "aws_vpc_ipv4_cidr_block_association" "pub-subnet2" {
#    vpc_id     = aws_vpc.lab1-vpc.id
#    cidr_block = "172.2.0.0/16"
# }
