#Google cloud prvider

provider "google" {
  region = "us-central1"
  zone   = "us-central1-c"
  project     = var.project_id
}

# modules
module "dataset" {
  source = "./dataset"
  feed_manifesto_location  = var.feed_manifesto_location
  feed_manifesto = var.feed_manifesto

}

module "table" {
  source = "./table"
  feed_manifesto_id = module.dataset.feed_manifesto_dataset_id
  tbl_edh_msft = var.tbl_edh_msft
  tbl_edw_msft = var.tbl_edw_msft
}