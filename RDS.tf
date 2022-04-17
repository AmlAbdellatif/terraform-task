

resource "aws_db_instance" "my_rds2" {
  allocated_storage      = 10
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t2.micro"
  name                   = "my_db"
  username               = "aml"
  password               = "aml12345"
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.g-subnet.name
  vpc_security_group_ids = [aws_security_group.sg-db.id]
  tags = {
    Name = "my_db"
  }
}
