variable  "project_name" {
  type        = string
   default = "expense"
}
variable  "environment" {
  type        = string
  default     = "dev"
}
variable "app_alb_tags" {
    type = string
    default = "app-alb"
}