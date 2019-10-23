terraform {
  backend "gcs" {
    bucket  = "anubbhav-state"
    prefix  = "terraform/bqtest"
  }
}

provider "google" {
  project = var.project_id
}
resource "google_project_service" "enable_destination_api" {
  project            = var.project_id
  service            = "bigquery-json.googleapis.com"
  disable_on_destroy = false
}
resource "google_bigquery_dataset" "main" {
  dataset_id    = var.dataset_id
  description   = var.description
  location      = var.location

  default_table_expiration_ms = var.expiration
  project                     = var.project_id
  labels                      = var.dataset_labels

  dynamic "access" {
    for_each = [for s in var.access_rules: {
      role   = s.role
      user_by_email = s.user_by_email
    }]

    content {
      role          = access.value.role
      user_by_email = access.value.user_by_email
    }
  }
}




resource "google_bigquery_table" "main" {
  count         = length(var.tables)
  dataset_id    = google_bigquery_dataset.main.dataset_id
  table_id      = var.tables[count.index]["table_id"]
  labels        = var.tables[count.index]["labels"]
  project       = var.project_id

  time_partitioning {
    type = var.time_partitioning
  }
}
