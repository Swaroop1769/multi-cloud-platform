variable "gcp_project" {
  description = "GCP project ID"
  type        = string
}

variable "gcp_region" {
  description = "GCP region to deploy resources"
  type        = string
  default     = "us-central1"
}

variable "gcs_bucket_name" {
  description = "Name for the GCS bucket"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}