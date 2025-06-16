module "network" {
  source     = "../../modules/network"
  name       = "test-vpc"
  environment = var.environment
}

