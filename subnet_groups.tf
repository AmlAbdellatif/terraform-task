
resource "aws_elasticache_subnet_group" "elastic_group" {
  name       = "redis-SG"
  subnet_ids = [module.network.pri_subnet2_id, module.network.pri_subnet1_id]
}


resource "aws_db_subnet_group" "g-subnet" {
  name       = "g-subnet"
  subnet_ids = [module.network.pri_subnet1_id, module.network.pri_subnet2_id]

  tags = {
    Name = "My DB subnet group"
  }
}