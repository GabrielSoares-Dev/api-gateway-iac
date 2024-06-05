resource "aws_apigatewayv2_api" "boilerplate_laravel_serverless" {
  name          = "${lower(var.environment)}-boilerplate-laravel-serverless"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_stage" "boilerplate_laravel_serverless_stage" {
  api_id      = aws_apigatewayv2_api.boilerplate_laravel_serverless.id
  name        = "$default"
  auto_deploy = true

  tags = {
    STAGE = lower(var.environment)
  }
}

