terraform {
  required_version = "1.6.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }
  }

  backend "s3" {}
}

provider "aws" {
  region  = "ap-northeast-1"
  profile = "sekigaku"
}