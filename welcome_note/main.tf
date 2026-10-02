terraform {
  required_version = ">= 1.0.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# Creates a simple local file on your machine
resource "local_file" "welcome" {
  filename = "${path.module}/hello.txt"
  content  = "Hello, Terraform is set up!"
}