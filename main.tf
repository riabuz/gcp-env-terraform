provider "google" {
  project     = var.project
  credentials = var.credentials_file
  region      = var.region
  zone        = var.zone
}

resource "google_compute_instance" "my_instance" {
  name                      = "${var.env}-${var.region}-${var.app_name}-instance"
  machine_type              = var.machine_type
  zone                      = var.zone
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = var.os_image
    }
  }

  network_interface {
    network    = google_compute_network.my_vpc.self_link
    subnetwork = google_compute_subnetwork.my_subnet.self_link
    access_config {
      // needed even if empty to ensure the instance is accessible over the internet 
    }
  }
}

resource "google_compute_network" "my_vpc" {
  name                    = "${var.env}-${var.app_name}-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "my_subnet" {
  name          = "${var.env}-${var.app_name}-subnet"
  ip_cidr_range = "10.20.0.0/16"
  region        = var.region
  network       = google_compute_network.my_vpc.id
}
