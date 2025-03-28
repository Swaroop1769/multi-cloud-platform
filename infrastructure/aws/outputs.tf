output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.storage_bucket.bucket #storage bucket here is the name of custom created bucket
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.storage_bucket.arn
}