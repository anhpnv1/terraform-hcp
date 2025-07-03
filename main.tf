terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.2.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "anhpnv-1-1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}