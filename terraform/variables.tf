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

variable "gcp_bucket" {
  description = "GCP Bucket name for Terraform state"
  type        = string
  sensitive   = true
}

variable "environment" {
  description = "Deployment environment (dev, stage, prod)"
  type        = string
  default     = "dev"
}

variable "workload_identity_provider" {
  description = "Path to GCP workload identity provider"
  type        = string
}
