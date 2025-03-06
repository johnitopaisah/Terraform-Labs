terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "johnitopaisah"
    
    workspaces {
      name = "get-started-terraform"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
       version = "~> 5.0"
    }
  }
}

locals {
  project_name = "JohnItopa"
}
