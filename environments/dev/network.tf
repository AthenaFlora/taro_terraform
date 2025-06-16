module "network" {
  source     = "../../modules/network"
  name       = "dev-vpc"
  environment = var.environment
}