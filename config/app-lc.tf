resource "aws_launch_configuration" "app-lc" {
    name = "App_Launch_Configuration"
    image_id = var.amis
    instance_type = var.instance_type_internal
    security_groups = [
        var.output_internal_alb_sg,
        var.output_bastion_ssh
    ]
    key_name                   = "NVec2key"
}

output "app_lc_name" {
    value = aws_launch_configuration.app-lc.name
  
}