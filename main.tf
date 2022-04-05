provider "google" {
  project     = "gcp-env-terraform"
  credentials = "${file("credentials.json")}"
  region      = "us-central1"
  zone        = "us-central1-c"
}
