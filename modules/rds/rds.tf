resource "aws_db_instance" "db_instance" {
  identifier             = var.name
  instance_class         = var.instance_class
  allocated_storage      = var.allocated_storage
  engine                 = var.engine
  engine_version         = var.engine_version
  username               = var.db_username
  password               = var.db_password
  db_subnet_group_name   = var.db_subnet_group_name
  vpc_security_group_ids = [module.sg_db.security_group_id]
  parameter_group_name   = aws_db_parameter_group.parameter_group.name
  publicly_accessible    = true
  skip_final_snapshot    = true
}
