resource "aws_ssm_parameter" "boilerplate_laravel_serverless_10_ssm_api_gw_id" {
  name  = "/${lower(var.environment)}/api-gw/boilerplate-laravel-10-serverless/id"
  type  = "SecureString"
  value = aws_apigatewayv2_api.boilerplate_laravel_serverless_10_api_gw.id
}