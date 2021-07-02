resource "google_compute_instance" "first_instance" {
 name         = var.private-instance-name
 machine_type = var.machine-type
 zone         = var.zone
 tags         = ["http-server"]
 boot_disk {
   initialize_params {
     image = var.image
   }
 }

 metadata_startup_script = file("startup-script")

 network_interface {
   network = google_compute_network.vpc.name
   subnetwork = google_compute_subnetwork.subnet.name
   access_config {
      // Ephemeral IP
    }
 }
}

resource "google_compute_instance" "second_instance" {
 name         = var.public-instance-name
 machine_type = var.machine-type
 zone         = var.zone
 tags         = ["http-server"]

 boot_disk {
   initialize_params {
     image = var.image
   }
 }

 metadata_startup_script = file("startup-script")

 network_interface {
   network = google_compute_network.vpc.name
   subnetwork = google_compute_subnetwork.subnet.name
   access_config {
      // Ephemeral IP
    }
 }
}