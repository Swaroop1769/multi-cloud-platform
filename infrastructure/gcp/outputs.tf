# output "bucket_name" {
#   description = "The name of the GCS bucket"
#   value       = google_storage_bucket.storage_bucket.name
# }

# output "bucket_url" {
#   description = "The URL to access the GCS bucket"
#   value       = google_storage_bucket.storage_bucket.url
# }

output "vm_instance_id" {
  description = "The ID of the Compute Engine instance"
  value       = google_compute_instance.vm_instance.id
}

output "vm_instance_self_link" {
  description = "The self-link of the Compute Engine instance"
  value       = google_compute_instance.vm_instance.self_link
}

output "vm_instance_public_ip" {
  description = "The public IP address of the VM"
  value       = google_compute_instance.vm_instance.network_interface.0.access_config.0.nat_ip
}

output "vm_instance_private_ip" {
  description = "The private IP address of the VM"
  value       = google_compute_instance.vm_instance.network_interface.0.network_ip
}
