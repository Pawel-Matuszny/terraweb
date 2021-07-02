resource "google_compute_firewall" "firewall" {
  name    = var.firewall-name
  network = google_compute_network.vpc.name
  source_ranges = ["0.0.0.0/0"]
  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]
  }
}

