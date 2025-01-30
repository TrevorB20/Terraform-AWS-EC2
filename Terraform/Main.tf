terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

#Creating EC2 Instance

resource "aws_instance" "Myweb" {
  ami           = "Provide your own AMI"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2 Terraform"
  }
}
