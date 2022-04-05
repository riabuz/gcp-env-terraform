provider "google" {
  project     = "gcp-env-terraform"
  credentials = file("credentials.json")
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
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // needed even if empty to ensure the instance is accessible over the internet 
    }
  }
}
