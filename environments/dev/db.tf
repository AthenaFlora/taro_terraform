module "db" {
  source               = "../../modules/rds"
  vpc_id               = module.vpc.vpc_id
  db_subnet_group_name = module.vpc.database_subnet_group_name
  public_subnet_cidrs  = module.vpc.public_subnet_cidrs
  db_username          = var.db_username
  db_password          = var.db_password
}