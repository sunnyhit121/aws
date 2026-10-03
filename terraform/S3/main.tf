terraform {
  # Defines the minimum and maximum allowed Terraform CLI versions
  required_version = ">= 1.5.0, < 2.0.0"

  # Defines external provider requirements
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Provider configuration block
provider "aws" {
  region = "us-east-1"
}

# Example resource - Adding S3 bucket
# 1. Base S3 Bucket
resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-sunnyaws121" # Must be globally unique

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
