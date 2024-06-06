data "aws_acm_certificate" "boilerplate_laravel_certificate" {
  domain   = "${lower(var.environment)}.${var.domain}"
}