#Deploy stationary shop dataset
resource "google_bigquery_dataset" "stationary" {
  dataset_id                  = var.stationary
  friendly_name               = "stationary"
  description                 = "Stationary Shop dataset"
  location                    = var.stationary #check the location
  #default_table_expiration_ms = 3600000
}