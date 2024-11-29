locals {
    resource_name = "${var.project_name}-${var.environment}"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    # Terraform uses list(String) defined as ["subnet1", "subnet2"], AWS uses StringList defined as "subnet1,subnet2".
    # To convert StringList to list(String), we use split(",", "foo,bar,baz") function return as ["foo","bar","baz"]
    private_subnet_ids = split(",",data.aws_ssm_parameter.private_subnet_ids.value)
    ingress_alb_sg_id = data.aws_ssm_parameter.ingress_alb_sg_id.value
    https_certificate_arn = data.aws_ssm_parameter.https_certificate_arn.value

}

