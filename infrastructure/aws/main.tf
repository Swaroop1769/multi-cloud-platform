# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.0"
#     }
#   }

#   required_version = ">= 1.3.0"
# }

# provider "aws" {
#   region = var.aws_region
# }

# resource "aws_s3_bucket" "storage_bucket" {
#   bucket        = var.s3_bucket_name
#   force_destroy = true # this helps when we destroy infra

#   tags = {
#     Name        = "MultiCloud Storage"
#     Environment = var.environment
#   }
# }

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

resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id # Amazon Linux 2 or Ubuntu AMI ID
  instance_type = var.instance_type

  tags = {
    Name        = "MultiCloud EC2"
    Environment = var.environment
  }
}
