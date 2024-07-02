# data "aws_acm_certificate" "boilerplate_laravel_certificate" {
#   domain   = "${lower(var.environment)}.${var.domain}"
# }

data "aws_acm_certificate" "boilerplate_nestjs_certificate" {
  domain   = "${lower(var.environment)}.${var.domain}"
  statuses = ["PENDING_VALIDATION","ISSUED","INACTIVE"]
}