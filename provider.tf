provider "google" {
 credentials = file("CREDENTIALS_FILE.json")
 project     = var.project
 region      = var.region
}