
resource "aws_security_group" "sg1" {
  name        = "sg1"
  description = "Allow ssh inbound traffic"
  vpc_id      = module.network.vpc_id

  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description = "http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${var.workspace}-sg1"
  }
}


resource "aws_security_group" "sg2" {
  name        = "sg2"
  description = "Allow ssh inbound traffic"
  vpc_id      = module.network.vpc_id

  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [module.network.vpc_cidr]
    # ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    description = "ssh"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = [aws_vpc.lab1-vpc.ipv6_cidr_block]
  }
  
    ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    cidr_blocks = [module.network.vpc_cidr] 
  }
    ingress {
    from_port = 6379
    to_port = 6379
    protocol = "tcp"
    cidr_blocks = [module.network.vpc_cidr] 
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${var.workspace}-sg2"
  }
}



resource "aws_security_group" "sg-db" {
  name   = "rds_sg"
  vpc_id = module.network.vpc_id


  ingress {
    description = "all"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [module.network.vpc_cidr]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${var.workspace}-sg-db"
  }
}
