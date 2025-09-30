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

resource "google_artifact_registry_repository" "belay_on_artifacts" {
  location      = var.region
  repository_id = "belay-on-artifacts"
  description   = "Artifact Registry for all Belay On Docker images"
  format        = "DOCKER"
}

