terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.7"
    }
  }

    required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region = "us-east-1"
}

resource "aws_instance" "terraform-ec2-server" {
    ami           = "ami-0db6c6238a40c0681"
    instance_type = "t2.micro"
    
    tags = {
        Name = "ExampleAppServerInstance"
    }
}