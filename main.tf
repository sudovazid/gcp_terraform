#Google cloud provider

provider "google" {
  region = var.region
  zone   = var.zone
  project     = var.project_id
}

# modules
module "dataset" {
  source = "./dataset"
  stationary_DS_location = var.stationary_DS_location
  stationary = var.stationary

}

module "table" {
  source = "./table"
  stationary_id = module.dataset.stationary_dataset_id
  tbl_notebook = var.tbl_notebook
  tbl_pen = var.tbl_pen
}