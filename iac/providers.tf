terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "tf-state.thigas"
    key            = "dev"
    region         = "us-east-1"
    dynamodb_table = "dev-tf-state-locks"
  }
}

provider "aws" {
  region = "us-east-1"
}