resource "aws_apigatewayv2_api" "boilerplate_laravel_serverless" {
  name          = "boilerplate-laravel-serverless"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_stage" "boilerplate_laravel_serverless_stage" {
  api_id      = aws_apigatewayv2_api.boilerplate_laravel_serverless.id
  name        = lower(var.environment)
  auto_deploy = true

  tags = {
    STAGE = lower(var.environment)
  }
}

