# output "bucket_name" {
#   description = "The name of the S3 bucket"
#   value       = aws_s3_bucket.storage_bucket.bucket #storage bucket here is the name of custom created bucket
# }

# output "bucket_arn" {
#   description = "The ARN of the S3 bucket"
#   value       = aws_s3_bucket.storage_bucket.arn
# }

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.ec2_instance.id
}

output "instance_arn" {
  description = "The ARN of the EC2 instance"
  value       = aws_instance.ec2_instance.arn
}

output "instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.ec2_instance.public_ip
}

output "instance_private_ip" {
  description = "The private IP of the EC2 instance"
  value       = aws_instance.ec2_instance.private_ip
}
