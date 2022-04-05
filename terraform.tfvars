project = "gcp-env-terraform"

credentials_file = "credentials.json"

region = "us-central1"

zone = "us-central1-a"

env = "dev"

app_name = "my-gcp-app"

instance_params = {
  machine_type              = "f1-micro"
  allow_stopping_for_update = true
  os_image                  = "debian-cloud/debian-9"
}

subnet_cidr_range = "10.20.0.0/16"
