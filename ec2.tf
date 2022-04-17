
resource "aws_instance" "bastion" {
  ami                         = var.image_id
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [aws_security_group.sg1.id]
  subnet_id                   = module.network.pub_subnet1_id
  key_name                    = aws_key_pair.public_key_pair.id
  associate_public_ip_address = true

  provisioner "local-exec" {
    command = "echo  hello the ip address of ec2 bastion in region ${var.region} is ${self.public_ip} >> public_ips.txt"

  }

  #  key_name="terraform-keypair"
  tags = {
    Name = "bastion"
  }
}


resource "aws_instance" "application" {
  ami                         = var.image_id
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [aws_security_group.sg2.id]
  subnet_id                   = module.network.pri_subnet1_id
  key_name                    = aws_key_pair.public_key_pair.id
  associate_public_ip_address = false
  #  key_name="terraform-keypair"
  tags = {
    Name = "application"
  }
}
