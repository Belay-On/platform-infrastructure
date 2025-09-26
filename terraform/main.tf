# The terraform block is used to configure Terraform itself,
# not your cloud resources. Here you declare the providers
# (plugins) and their versions.
terraform {
  backend "gcs" {}

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.8.0"
    }
  }
}

provider "google" {
  project = var.gcp_project_id
  region  = var.region
  zone    = var.zone
}

resource "google_artifact_registry_repository" "belay_on_repo" {
  location      = var.region
  repository_id = "belay-on-docker-${var.environment}"
  description   = "Belay On Docker Repository for ${var.environment}"
  format        = "DOCKER"
}
