provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = {
      "owner"        = "DevopsTeam"
      "project-name" = "api-gateway-iac-${var.environment}"
      "managed-by"   = "terraform"
    }
  }
}
