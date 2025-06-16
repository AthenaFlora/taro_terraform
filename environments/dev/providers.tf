terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket         = "taro-terraform-state-bucket"
    key            = "dev/terraform.tfstate"
    use_lockfile   = true
    encrypt        = true
  }
}

provider "aws" {}