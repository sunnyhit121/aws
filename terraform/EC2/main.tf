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

# Example resource
resource "aws_instance" "example1" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t3.micro"

  tags = {
    Name = "My2ndEC2"
  }
}