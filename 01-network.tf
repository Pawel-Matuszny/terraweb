resource "google_compute_network" "vpc"{
  name       = var.network-name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = var.subnetwork-name
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.0.0.0/16"
  region        = var.region
}

resource "google_compute_router" "router" {
  name    = var.router-name
  region  = var.region
  network = google_compute_network.vpc.name
}