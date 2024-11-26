module "app_alb" {
  source = "terraform-aws-modules/alb/aws"
  internal = true
  name    = "${local.resource_name}-app-alb"
  vpc_id  = local.vpc_id
  subnets = local.private_subnet_ids
  security_groups = [local.app_lb_sg_id]
  enable_deletion_protection = false
  tags = {
    Name = var.app_alb_tags
  }
  
}
 
 ## Default listener for app_lb , respective domain for a record is created in route53 check it
resource "aws_lb_listener" "http" {
  load_balancer_arn = module.app_alb.arn
  port              = "80"
  protocol          = "HTTP"

   default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/html"
      message_body = "<h1>Hello, I am from app load balancer</h1>"
      status_code  = "200"
    }
  }
}
