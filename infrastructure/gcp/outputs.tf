output "bucket_name" {
  description = "The name of the GCS bucket"
  value       = google_storage_bucket.storage_bucket.name
}

output "bucket_url" {
  description = "The URL to access the GCS bucket"
  value       = google_storage_bucket.storage_bucket.url
}