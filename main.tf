provider "aws" {
  region  = var.region
  profile = var.aws_profile
}

module "vpc" {
  source = "./vpc"
}

module "ec2" {
  source                     = "./ec2"
  public_subnet1             = module.vpc.outputpublicsubnet1
  private_subnet3            = module.vpc.outputprivatesubnet3
  private_subnet4            = module.vpc.outputprivatesubnet4
  output_bastion_ssh         = module.vpc.output_bastion_ssh
  web_access_from_nat_prv_sg = module.vpc.web_access_from_nat_prv_sg
  web_access_from_nat_pub_sg = module.vpc.web_access_from_nat_pub_sg

}

module "elb" {
  source          = "./elb"
  public_subnet1  = module.vpc.outputpublicsubnet1
  public_subnet2  = module.vpc.outputpublicsubnet2
  private_subnet3 = module.vpc.outputprivatesubnet3
  private_subnet4 = module.vpc.outputprivatesubnet4
  external_alb_sg = module.vpc.output_external_alb_sg
  vpc_id          = module.vpc.output_vpc_id
  internal_alb_sg = module.vpc.output_internal_alb_sg
}

