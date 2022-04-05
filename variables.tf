variable "region" {
  description = "The region in which you would like to deploy your resources"
  default     = "us-central1"
}

variable "zone" {
  description = "The zone (within the region) in which you would like to deploy your resources"
  default     = "us-central1-c"
}

variable "env" {
  description = "The environment in which you would like to deploy your resources i.e. dev/test/prod"
  default     = "dev"
}

variable "app_name" {
  description = "The name of the service/app you are deploying these resources for"
}
