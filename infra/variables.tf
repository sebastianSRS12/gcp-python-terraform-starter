variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "bucket_name" {
  description = "Name for the GCS bucket (must be globally unique)"
  type        = string
}

variable "pubsub_topic_name" {
  description = "Name for the Pub/Sub topic"
  type        = string
}

variable "db_instance_name" {
  description = "Name of the Cloud SQL instance"
  type        = string
}

variable "db_name" {
  description = "Name of the database in Cloud SQL"
  type        = string
}

variable "db_user" {
  description = "Database user name"
  type        = string
}

variable "db_password" {
  description = "Database user password"
  type        = string
  sensitive   = true
}
