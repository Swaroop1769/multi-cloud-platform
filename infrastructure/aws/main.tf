terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.3.0"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type

  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name
  user_data            = file("user-script.sh")

  tags = {
    Name        = var.instance_name
    Environment = var.environment
  }
}

