variable "gcp_project" {
  description = "GCP project ID"
  type        = string
}

variable "gcp_region" {
  description = "GCP region to deploy resources"
  type        = string
  default     = "us-central1"
}

variable "gcp_zone" {
  description = "GCP zone for the Compute Engine instance"
  type        = string
  default     = "us-central1-a"
}

variable "machine_type" {
  description = "Machine type for Compute Engine VM"
  type        = string
  default     = "e2-medium"
}

variable "image" {
  description = "OS image for Compute Engine"
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}
