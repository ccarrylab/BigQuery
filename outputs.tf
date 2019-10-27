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

# Output if count argument is used
# When a resource has the count argument set, the resource itself becomes a list of instance objects rather than a single object. 
# In that case, access the attributes of the instances using either splat expressions or index syntax:

/*output "table_id" {
  value       = google_bigquery_table.main.*.id
  description = "Unique id for the table being provisioned"
}*/


# When a resource has the for_each argument set, the resource itself becomes a map of instance objects rather than a single object, and
# Attributes of instances must be specified by key, or can be accessed using a for expression.
output "table_id" {
  value       = [for value in google_bigquery_table.main: value.id]
  description = "Unique id for the table being provisioned"
}

output "dataset_labels" {
  value       = google_bigquery_dataset.main.labels
  description = "Key value pairs in a map for dataset labels"
}

# Output if count argument is used
/*output "table_labels" {
  value       = google_bigquery_table.main.*.labels
  description = "Key value pairs in a map for table labels"
}*/

output "table_labels" {
  value       = [for value in google_bigquery_table.main: value.labels]
  description = "Key value pairs in a map for table labels"
}
