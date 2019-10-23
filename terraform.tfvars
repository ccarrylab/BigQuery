project_id        = "us-con-gcp-svc-206218"
time_partitioning = "DAY"
dataset_id        = "bqtest"
description       = "some description"
location          = "US"
dataset_labels = {
  env      = "dev"
  billable = "true"
  owner    = "janesmith"
}
access_rules = [
    {
        role          = "roles/bigquery.admin"
        user_by_email = "sanmmishra@dev.ocg.deloitte.com"
    },
    {
        role          = "roles/bigquery.admin"
        user_by_email = "gokramesh@dev.ocg.deloitte.com"
    }
]

tables = [
  {
    table_id = "footable",
    labels = {
      env      = "dev"
      billable = "true"
      owner    = "joedoe"
    },
  },
  {
    table_id = "bartable",
    labels = {
      env      = "devops"
      billable = "true"
      owner    = "joedoe"
    },
  }
]