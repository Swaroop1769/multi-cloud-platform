# variable "aws_region" {
#   description = "AWS region to deploy the S3 resource"
#   type        = string
#   default     = "us-east-1"
# }

# variable "s3_bucket_name" {
#   description = "Name for S3 bucket"
#   type        = string
# }

# variable "environment" {
#   description = "environment typically - dev, prod"
#   type        = string
#   default     = "dev"
# }

variable "aws_region" {
  description = "AWS region to deploy the EC2 instance"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-084568db4383264d4" # ubuntu ami
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "environment" {
  description = "Deployment environment, typically dev, prod"
  type        = string
  default     = "dev"
}
