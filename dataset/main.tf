#deploy feed menifesto dataset

resource "google_bigquery_dataset" "feed_manifesto" {
  dataset_id                  = var.feed_manifesto
  friendly_name               = "Feed Manifesto"
  description                 = "Feed manifesto dataset"
  location                    = var.feed_manifesto_location #check the location
  #default_table_expiration_ms = 3600000
}

