variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "s3_bucket_name" {
  description = "Name for the S3 bucket"
  type        = string
}

variable "environment" {
  description = "environment - dev, prod"
  type        = string
  default     = "dev"
}