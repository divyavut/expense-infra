resource "aws_ssm_parameter" "ingress_app_alb_listener_arn" {
  name  = "/${var.project_name}/${var.environment}/ingress_app_alb_listener_arn"
  type  = "StringList"
  value = aws_lb_listener.https.arn
}