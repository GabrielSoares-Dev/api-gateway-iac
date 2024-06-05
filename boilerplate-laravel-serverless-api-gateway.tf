resource "aws_apigatewayv2_api" "boilerplate_laravel_serverless_10_api_gw" {
  name          = "${lower(var.environment)}-boilerplate-laravel-10-serverless"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_stage" "boilerplate_laravel_serverless_stage" {
  api_id      = aws_apigatewayv2_api.boilerplate_laravel_serverless_api_gw.id
  name        = "$default"
  auto_deploy = true

  tags = {
    STAGE = lower(var.environment)
  }
}

resource "aws_ssm_parameter" "boilerplate_laravel_serverless_10_ssm_api_gw_id" {
  name  = "/${lower(var.environment)}/api-gw/boilerplate-laravel-10-serverless/id"
  type  = "SecureString"
  value = aws_apigatewayv2_api.boilerplate_laravel_serverless_api_gw.id
}