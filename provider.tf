provider "aws" {
  region  = var.region
  profile = "share"
}
terraform {
  required_version = ">= 0.13.6"
  backend "s3" {
    profile              = "share"
    bucket               = "sharelibrary2703"
    key                  = "production/services-prod/jarvis-core/terraform.tfstate"
    region               = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.10"
    }
    template = {
      source = "hashicorp/template"
    }
  }
}