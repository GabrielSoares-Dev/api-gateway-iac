# resource "aws_ssm_parameter" "boilerplate_laravel_serverless_10_ssm_api_gw_id" {
#   name  = "/${lower(var.environment)}/api-gw/boilerplate-laravel-10-serverless/id"
#   type  = "SecureString"
#   value = aws_apigatewayv2_api.boilerplate_laravel_serverless_10_api_gw.id
# }

# resource "aws_ssm_parameter" "boilerplate_laravel_serverless_10_ssm_api_gw_domain_name" {
#   name  = "/${lower(var.environment)}/api-gw/boilerplate-laravel-10-serverless/domain/name"
#   type  = "String"
#   value = aws_apigatewayv2_domain_name.boilerplate_laravel_serverless_10_api_gw_domain.domain_name_configuration[0].target_domain_name
# }

# resource "aws_ssm_parameter" "boilerplate_laravel_serverless_10_ssm_api_gw_domain_zone_id" {
#   name  = "/${lower(var.environment)}/api-gw/boilerplate-laravel-10-serverless/domain/zone-id"
#   type  = "String"
#   value = aws_apigatewayv2_domain_name.boilerplate_laravel_serverless_10_api_gw_domain.domain_name_configuration[0].hosted_zone_id
# }

resource "aws_ssm_parameter" "boilerplate_nestjs_serverless_ssm_api_gw_id" {
  name  = "/${lower(var.environment)}/api-gw/boilerplate-nestjs-serverless/id"
  type  = "SecureString"
  value = aws_apigatewayv2_api.boilerplate_nestjs_serverless_api_gw.id
}

resource "aws_ssm_parameter" "boilerplate_nestjs_serverless_ssm_api_gw_domain_name" {
  name  = "/${lower(var.environment)}/api-gw/boilerplate-nestjs-serverless/domain/name"
  type  = "String"
  value = aws_apigatewayv2_domain_name.boilerplate_nestjs_serverless_api_gw_domain.domain_name_configuration[0].target_domain_name
}

resource "aws_ssm_parameter" "boilerplate_nestjs_serverless_ssm_api_gw_domain_zone_id" {
  name  = "/${lower(var.environment)}/api-gw/boilerplate-nestjs-serverless/domain/zone-id"
  type  = "String"
  value = aws_apigatewayv2_domain_name.boilerplate_nestjs_serverless_api_gw_domain.domain_name_configuration[0].hosted_zone_id
}