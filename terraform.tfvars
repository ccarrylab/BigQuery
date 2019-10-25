project_id        = "anubbhav-project-1"
time_partitioning = "DAY"
dataset_id        = "bqtest"
description       = "some description"
location          = "US"
dataset_labels = {
  env      = "dev"
  billable = "true"
  owner    = "anubbhavm"
}
access_rules = [
    {
        role          = "roles/bigquery.admin"
        user_by_email = "anubhavm5164@gmail.com"
    },
    {
        role          = "roles/bigquery.dataViewer"
        user_by_email = "anubbhav777@gmail.com"
    }
]

tables = [
  {
    table_id = "footable",
    labels = {
      env      = "dev"
      billable = "true"
      owner    = "anubbhavm"
    },
  },
  {
    table_id = "bartable",
    labels = {
      env      = "devops"
      billable = "true"
      owner    = "anubbhavm"
    },
  }
]
