output vpc_cidr{
  value       = aws_vpc.lab1-vpc.cidr_block
}
output vpc_id{
  value       = aws_vpc.lab1-vpc.id
}


output pub_subnet1_id {
  value       = aws_subnet.pub-subnet1.id
}
output pub_subnet2_id{
  value       = aws_subnet.pub-subnet2.id
}
output pri_subnet1_id{
  value       = aws_subnet.pri-subnet1.id
}
output pri_subnet2_id{
  value       = aws_subnet.pri-subnet2.id
}
