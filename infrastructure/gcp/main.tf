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

