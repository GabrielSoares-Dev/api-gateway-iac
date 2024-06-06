data "aws_acm_certificate" "boilerplate_laravel_certificate" {
  domain   = "${var.environment}.${var.domain}"
}