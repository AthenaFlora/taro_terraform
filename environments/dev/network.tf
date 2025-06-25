module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = ["${var.region}a"]
  public_subnets  = var.public_subnet_cidrs

  create_database_subnet_group	= true
  create_database_subnet_route_table	= true
  database_subnet_group_name	= var.database_subnet_group_name
  database_subnet_group_tags	= {
    Terraform = "true"
    Environment = var.environment
  }

  enable_nat_gateway = true
  single_nat_gateway = true
  one_nat_gateway_per_az = false

  tags = {
    Terraform = "true"
    Environment = var.environment
  }
}