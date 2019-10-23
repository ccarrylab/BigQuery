output "dataset_id" {
  value       = google_bigquery_dataset.main.id
  description = "Unique id for the dataset being provisioned"
}

output "dataset_name" {
  value       = google_bigquery_dataset.main.friendly_name
  description = "Friendly name for the dataset being provisioned"
}

output "dataset_project" {
  value       = google_bigquery_dataset.main.project
  description = "Project where the dataset and table are created"
}

output "table_id" {
  value       = google_bigquery_table.main.*.id
  description = "Unique id for the table being provisioned"
}


output "dataset_labels" {
  value       = google_bigquery_dataset.main.labels
  description = "Key value pairs in a map for dataset labels"
}

output "table_labels" {
  value       = google_bigquery_table.main.*.labels
  description = "Key value pairs in a map for table labels"
}
