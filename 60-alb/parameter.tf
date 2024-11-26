resource "aws_ssm_parameter" "export_app_alb_dns_name" {
  name  = "/${var.project_name}/${var.environment}/app_alb_dns_name"
  type  = "StringList"
  value = module.app_alb.dns_name
}
resource "aws_ssm_parameter" "export_app_alb_listener_arn" {
  name  = "/${var.project_name}/${var.environment}/app_alb_listener_arn"
  type  = "StringList"
  value = aws_lb_listener.http.arn
}