resource "aws_lb" "albweb" {
  name                       = "Web-Application-Load-Balancer"
  load_balancer_type         = "application"
  security_groups            = [var.external_alb_sg]
  subnets                    = [var.public_subnet1, var.public_subnet2]
  enable_deletion_protection = false

  tags = {
    Environment = "External Application Load Balancer"
  }
}

output "output_albweb" {
  value = aws_lb.albweb.arn

}


resource "aws_lb_target_group" "tg" {
  name        = "IP-lb-instancetype-tg"
  port        = 80
  protocol    = "HTTP"
  target_type = "instance"
  vpc_id      = var.vpc_id
}

output "out_tg_instances" {
  value = aws_lb_target_group.tg.arn

}

resource "aws_lb_listener" "external_listner_web" {
  load_balancer_arn = aws_lb.albweb.arn
  port              = "80"
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }
}
