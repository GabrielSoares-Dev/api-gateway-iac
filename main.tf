terraform {
  required_version = ">= 1.2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.1.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }
  }

  backend "s3" {
    bucket = "remote-state-devops-team-us"
    key    = "iac/api-gateway-iac/terraform.tfstate"
    region = "us-east-2"
  }
}

