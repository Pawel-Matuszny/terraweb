output "webserver_ip1" {
  value = google_compute_instance.first_instance.network_interface.0.access_config.0.nat_ip
}

output "webserver_ip2" {
  value = google_compute_instance.second_instance.network_interface.0.access_config.0.nat_ip
}