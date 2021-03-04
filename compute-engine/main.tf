provider "google" {}

resource "google_compute_instance" "default" {
  name         = var.name
  project      = "easyence-sandbox"
  machine_type = var.machine_types
  zone         = var.zone

  tags = var.tags

  boot_disk {
    initialize_params {
      image = var.images
    }
  }

  network_interface {
    network = "default"

}

}