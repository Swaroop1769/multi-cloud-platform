# terraform {
#   required_providers {
#     google = {
#       source  = "hashicorp/google"
#       version = "~> 5.0"
#     }
#   }
#   required_version = ">= 1.3.0" #terraform cli version
# }

# provider "google" {
#   project = var.gcp_project
#   region  = var.gcp_region
# }

# resource "google_storage_bucket" "storage_bucket" {
#   name          = var.gcs_bucket_name
#   location      = var.gcp_region
#   force_destroy = true

#   labels = {
#     environment = var.environment
#   }
# }

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.3.0"
}

provider "google" {
  project = var.gcp_project
  region  = var.gcp_region
}

resource "google_compute_instance" "vm_instance" {
  name         = "multicloud-vm"
  machine_type = var.machine_type
  zone         = var.gcp_zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
    access_config {
      # Assigns a public IP
    }
  }

  labels = {
    environment = var.environment
  }
}

