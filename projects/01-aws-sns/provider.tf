terraform {
  required_version = ">= 1.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.21.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
  }
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = local.tags
  }
}
