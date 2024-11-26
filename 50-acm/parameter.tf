
resource "aws_ssm_parameter" "export_https_certificate_arn" {
  name  = "/${var.project_name}/${var.environment}/https_certificate_arn"
  type  = "StringList"
  value = aws_acm_certificate.expense.arn
}
