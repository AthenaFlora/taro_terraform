module "network" {
  source     = "../../modules/network"
  name       = "replace-vpc"
  environment = var.environment
}