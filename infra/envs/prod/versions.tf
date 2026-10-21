terraform {
  required_version = ">= 1.10"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  # use_lockfile reemplaza a la tabla DynamoDB (Terraform >= 1.10)
  backend "s3" {
    bucket       = "kordanix-platform-tfstate"
    key          = "orlando-mt/invitacion-navidad/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = var.tags
  }
}