terraform {
  cloud {
    organization = "loopednetwork"
    workspaces {
      name = "terraform-aws"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "jfabry-actions-test" {
  ami           = var.instance_ami
  instance_type = var.instance_size

  tags = {
    Name = var.instance_name
  }
}

