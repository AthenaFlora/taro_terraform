resource "aws_db_instance" "db_instance" {
  identifier             = var.name
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  engine_version         = "14.1"
  username               = var.db_username
  password               = var.db_password
  db_subnet_group_name   = var.db_subnet_group_name
  vpc_security_group_ids = [module.sg_db.security_group_id]
  parameter_group_name   = aws_db_parameter_group.parameter_group.name
  publicly_accessible    = true
  skip_final_snapshot    = true
}
