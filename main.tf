module "network" {
  source = "./network"

  vpc_cidr         = var.vpc_cidr
  region           = var.region
  vpc_name         = var.vpc_name
  pub_subnet1_cidr = var.pub_subnet1_cidr
  pub_subnet2_cidr = var.pub_subnet2_cidr
  pri_subnet1_cidr = var.pri_subnet1_cidr
  pri_subnet2_cidr = var.pri_subnet2_cidr
}
    