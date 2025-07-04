module "public_ec2" {
  source        = "../../modules/ec2"
  subnet_id     = module.vpc.public_subnets[0]
  ssh_key_name  = var.public_ec2_ssh_key_name
  enable_public_ip = true
  security_groups_names = [module.public_sg.security_group_id]
}