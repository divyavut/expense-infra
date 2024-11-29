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
variable  "zone_name" {
  type        = string
  default     = "dev.divyavutakanti.com"
}
