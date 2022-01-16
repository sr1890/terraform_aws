provider "aws" {
  region  = var.region
  profile = var.aws_profile
}

module "vpc" {
  source = "./vpc"
}