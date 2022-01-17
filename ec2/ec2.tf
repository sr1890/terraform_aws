# bastion hosts

resource "aws_instance" "bastion" {
    ami = var.amis
    instance_type = var.instance_type
    subnet_id = var.public_subnet1
    associate_public_ip_address = true
    key_name = "NVec2key"
    vpc_security_group_ids = [var.output_bastion_ssh]
    
    tags                        = {
        Name = "Bastion_Neo"
    }
 
}