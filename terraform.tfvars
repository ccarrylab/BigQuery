project_id        = "anubbhav-project-3"
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
        user_by_email = "anviviolet@gmail.com"
    },
    {
        role          = "roles/bigquery.dataOwner"
        user_by_email = "anubbhav777@gmail.com"
    }
]

# Input of type map(map(string)) using for_each argument in resource block
# Key of each map is the table_id
tables = {
 footable = {
    description = "This is footable"
    expiration_time = 6600000
    labels = {
      env      = "dev"
      billable = "true"
      owner    = "anubbhavm"
      }

  },

 bartable = {
    description = "This is bartable"
    expiration_time = 9600000
     labels = {
       env      = "devops"
       billable = "true"
       owner    = "anubbhavm"
     }

    }
}

# This is how the tables variable needs to be input if count argument is used
/*tables = [
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
]*/
