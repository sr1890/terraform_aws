variable "amis" {
    default = "ami-0b0af3577fe5e3532" # RHEl 8 
  
}

variable "instance_type" {

    default = "t2.micro"
  
}

variable "instance_type_internal" {

    default = "t2.micro"
  
}

variable "output_web_sg" {} 
variable "external_alb_sg" {} 
variable "output_bastion_ssh" {}   
variable "output_internal_alb_sg" {}
