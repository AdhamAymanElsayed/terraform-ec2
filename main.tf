terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-east-1" # Change to your desired region
}

resource "aws_instance" "example" {
  ami           = "ami-0531a8de51635a5c8"
  instance_type = "t2.micro"

  tags = {
    Name = "Kiwilytics"
  }
}
