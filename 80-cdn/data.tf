data "aws_cloudfront_cache_policy" "noCache" {
  name = "Managed-CachingDisabled"
}
data "aws_cloudfront_cache_policy" "Cache" {
  name = "Managed-CachingOptimized"
}

data "aws_ssm_parameter" "https_certificate_arn" {
 name  = "/${var.project_name}/${var.environment}/https_certificate_arn"
}