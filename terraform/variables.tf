variable "region" {
  description = "Default GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Default GCP zone"
  type        = string
  default     = "us-central1-c"
}

variable "gcp_project_id" {
  description = "GCP Project ID"
  type        = string
  sensitive   = true
}

variable "artifact_repository_id" {
  description = "Name of GSP Artifact Registry Repository"
  type        = string
}

