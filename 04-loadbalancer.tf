
resource "google_compute_forwarding_rule" "default" {
  name     = "website-forwarding-rule"
  region   = var.region

  load_balancing_scheme = "INTERNAL"
  backend_service       = google_compute_region_backend_service.backend.id
  all_ports             = true
  network               = google_compute_network.vpc.name
  subnetwork            = google_compute_subnetwork.subnet.name
}
resource "google_compute_region_backend_service" "backend" {
  provider              = google
  name                  = "website-backend"
  region                = var.region
  health_checks         = [google_compute_region_health_check.hc.id]
}
resource "google_compute_region_health_check" "hc" {
  provider           = google
  name               = "check-website-backend"
  check_interval_sec = 1
  timeout_sec        = 1
  region             = var.region

  http_health_check {
    port = "80"
  }
}
