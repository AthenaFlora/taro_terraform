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
    region         = var.region
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
}