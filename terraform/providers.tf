terraform {
  backend "s3" {
    bucket = "kwasiday5statebucket"
    key = "infra/githubactions.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
        source = "harshicorp/aws"
        version = "5.19.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
