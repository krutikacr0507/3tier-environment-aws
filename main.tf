provider "aws" {
  access_key = var.aws_accesskey
  secret_key = var.aws_secretkey
  profile = var.aws_profile
  region = var.aws_region
}

# VPC Module
module "vpc" {
  source = "./modules/vpc"
  cidr_block = var.vpc_cidr_block
}

# EC2 Module
module "ec2" {
  source = "./modules/ec2"
  vpc_id                 = module.vpc.vpc_id
  public_subnet_id       = module.vpc.public_subnet_id
  public_security_group_id = module.vpc.public_security_group_id
  private_subnet_id      = module.vpc.private_subnet_id
}

# RDS Module
module "rds" {
  source = "./modules/rds"
  vpc_id                 = module.vpc.vpc_id
  private_subnet_id      = module.vpc.private_subnet_id
  private_security_group_id = module.vpc.private_security_group_id
}

output "alb_dns_name" {
  value = module.ec2.alb_dns_name
}

output "db_instance_address" {
  value = module.rds.db_instance_address
}
