resource "aws_apigatewayv2_api" "boilerplate_laravel_serverless_10_api_gw" {
  name          = "${lower(var.environment)}-boilerplate-laravel-10-serverless"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_stage" "boilerplate_laravel_serverless_stage" {
  api_id      = aws_apigatewayv2_api.boilerplate_laravel_serverless_10_api_gw.id
  name        = "$default"
  auto_deploy = true

  tags = {
    STAGE = lower(var.environment)
  }
}

resource "aws_apigatewayv2_domain_name" "boilerplate_laravel_serverless_10_api_gw_domain" {
  domain_name = "${lower(var.environment)}.${var.domain}"

  domain_name_configuration {
    certificate_arn = data.aws_acm_certificate.boilerplate_laravel_certificate.arn
    endpoint_type   = "REGIONAL"
    security_policy = "TLS_1_2"
  }
}

resource "aws_apigatewayv2_api_mapping" "boilerplate_laravel_serverless_10_api_gw_mapping" {
  api_id      = aws_apigatewayv2_api.boilerplate_laravel_serverless_10_api_gw.id
  domain_name = aws_apigatewayv2_domain_name.boilerplate_laravel_serverless_10_api_gw_domain.id
  stage       = aws_apigatewayv2_stage.boilerplate_laravel_serverless_stage.id
}