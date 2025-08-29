output "bucket_name" {
  value = google_storage_bucket.main_bucket.name
}

output "pubsub_topic" {
  value = google_pubsub_topic.main_topic.name
}
