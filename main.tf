terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0557a15b87f6559cf"
  instance_type = "t2.micro"
  key_name = "iac-estudo"
  tags = {
    Name = "PrimeiraInstancia"
  }
}
