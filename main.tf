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
    Name = "jfabry-actions-test"
  }

  key_name = "ssh-key"
}

resource "aws_key_pair" "ssh-key" {
  key_name   = "ssh-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCbJAqm/AVtPtlKlDhyYVSWFBXn8aMDs0BrF21WNsiTDXMyW2TUtTx1hrG4Hi6wBpH1jCc9iEH5JPuAO5i0PKQlCfKjugp6K8odcNEgxIJGWT2gs55ouhNSopmbSDVYb40FfCEBp2IsGJntG/UPzM37EBokY4NeSc7cXdv3W+J+svawH6LDtA7RfLXBF8EntyoMVW3CfsQ+PZRKYlcJAsFPu6WDy7/wog04Af1wwAHmwwlSfdAg7SyDoNt/HD5dgrZM62i5ETl8JyfIiGZkNboer/wVHmu0Ae8cKGAKDXzNIjVtsHhTxlRBb6qUA+gmrvjSTip6mCH0TZGXLEJKLTqmxaygodSCKTshDAH7CJd9Dl54r8vvEeYGWPeA16FzfNWOpq0Y8U+L8GV8OGWtqmxfjs9bidv6Vu0aUBlij9c/7mgC2le2YMAEbBS++IWuLjoKl87P2aQbQo66p3t1UhRxhdy2NWvCDEKWwke+dtAagElRq0kdUaptsGSKJ57oCmGm/nUWIDuD3onL37f0wuO4dEc+wzInxSWYk2tTNP7T8G2vUUygvBCqdc3BVErDePyjhd7sa2nEAWoelQzMsJaZ2ffIfUeRU3OqhA6ejeRUxxBp9RRsjwzYCmpvvmK6za47QKkPcLmOH6hXOI/FYacFfUFcbX1BOnPTfj3eNoG4w== EC2"
}
