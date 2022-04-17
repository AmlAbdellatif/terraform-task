

# resource "aws_instance" "application" {
#   ami                    = "ami-08ca3fed11864d6bb"
#   instance_type          = "t2.micro"
#   vpc_security_group_ids = [aws_security_group.sg2.id]
#   subnet_id              = aws_subnet.pri-subnet1.id
#   key_name               = aws_key_pair.public_key_pair.id
#     associate_public_ip_address = false
#   #  key_name="terraform-keypair"
#   tags = {
#     Name = "application"
#   }
# }
