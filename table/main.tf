# notebook table
resource "google_bigquery_table" "tbl_notebook" {
  dataset_id = var.stationary
  table_id = var.tbl_notebook

  time_partitioning {
    type = "DAY"
  }
   schema = file()
}

# pen table
resource "google_bigquery_table" "tbl_pen" {
  dataset_id = var.pen
  table_id = var.tbl_pen

  time_partitioning {
    type = "DAY"
  }
   schema = file()
}