variable "project" {
  description = "The name of your project for which you would like to deploy your resources"
}

variable "credentials_file" {
  description = "The path to find the credentials of your service account"
}

variable "region" {
  description = "The region in which you would like to deploy your resources"
}

variable "zone" {
  description = "The zone (within the region) in which you would like to deploy your resources"
}

variable "env" {
  description = "The environment in which you would like to deploy your resources i.e. dev/test/prod"
}

variable "os_image" {
  description = "The operating system you would like your VM to run on"
}

variable "app_name" {
  description = "The name of the service/app you are deploying these resources for"
}

variable "machine_type" {
  description = "The size of the compute VM you are deploying"
}
