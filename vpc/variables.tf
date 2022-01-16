variable "vpc_cidr_block" {

    default = "10.10.0.0/16"
  
}

variable "public_subnet_1" {

    default = "10.10.1.0/24"
  
}

variable "public_subnet_2" {

    default = "10.10.2.0/24"
  
}

variable "private_subnet_3" {

    default = "10.10.3.0/24"
  
}

variable "private_subnet_4" {

    default = "10.10.4.0/24"
  
}

variable "availability_zone_A" {

    default = "us-east-1a"
  
}


variable "availability_zone_B" {

    default = "us-east-1b"
  
}

variable "any_ip" {

    default = "0.0.0.0/0"
  
}

