module "sg_db" {
  source = "terraform-aws-modules/security-group/aws"
  vpc_id = var.vpc_id
  name   = var.rds_security_group_name

  ingress_with_cidr_blocks = concat(
    [
      for cidr in var.public_subnet_cidrs : {
        from_port   = 5432
        to_port     = 5432
        protocol    = "tcp"
        cidr_blocks = cidr
      }
    ],
    [
      {
        rule        = "postgresql-tcp"
        cidr_blocks = "0.0.0.0/0"
      }
    ]
  )
}
