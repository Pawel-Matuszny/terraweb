data "google_compute_zones" "available" {
  project = var.project
  region  = var.region
}

