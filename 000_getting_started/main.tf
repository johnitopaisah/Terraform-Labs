terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.89.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-02a53b0d62d37a757"
  instance_type = "t2.micro"

  tags = {
    Name = "MyServer"
  }
}