// Provider configuration for GCP
provider "google" {
  project = var.project_id
  region  = var.region
}

// Storage bucket with lifecycle rule (auto-delete objects older than 7 days)
resource "google_storage_bucket" "main_bucket" {
  name     = var.bucket_name
  location = var.region

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 7
    }
  }
}

// Pub/Sub topic for messaging
resource "google_pubsub_topic" "main_topic" {
  name = var.pubsub_topic_name
}

// Cloud SQL (PostgreSQL) instance
resource "google_sql_database_instance" "main_db_instance" {
  name             = var.db_instance_name
  database_version = "POSTGRES_13"
  region           = var.region

  settings {
    tier = "db-f1-micro" // Free tier eligible
  }
}

// Cloud SQL database
resource "google_sql_database" "main_db" {
  name     = var.db_name
  instance = google_sql_database_instance.main_db_instance.name
}

// Cloud SQL user
resource "google_sql_user" "main_db_user" {
  name     = var.db_user
  instance = google_sql_database_instance.main_db_instance.name
  password = var.db_password
}

// Output the bucket URL for easy reference
output "bucket_url" {
  value = "gs://${google_storage_bucket.main_bucket.name}"
}

// Output the Pub/Sub topic name
output "pubsub_topic_name" {
  value = google_pubsub_topic.main_topic.name
}