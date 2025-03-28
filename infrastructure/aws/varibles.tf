variable "aws_region" {
  description = "AWS region to deploy the S3 resource"
  type        = string
  default     = "us-east-1"
}

variable "s3_bucket_name" {
  description = "Name for S3 bucket"
  type        = string
}

variable "environment" {
  description = "environment typically - dev, prod"
  type        = string
  default     = "dev"
}