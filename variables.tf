variable "project" {
  description = "The name of your project for which you would like to deploy your resources"
  type        = string
}

variable "credentials_file" {
  description = "The path to find the credentials of your service account"
  type        = string
}

variable "region" {
  description = "The region in which you would like to deploy your resources"
  type        = string
}

variable "zone" {
  description = "The zone (within the region) in which you would like to deploy your resources"
  type        = string
}

variable "env" {
  description = "The environment in which you would like to deploy your resources i.e. dev/test/prod"
  type        = string
}

variable "instance_params" {
  description = "Set parameters to configure your instance"
  type = object({
    machine_type              = string
    allow_stopping_for_update = bool
    os_image                  = string
  })

}

variable "app_name" {
  description = "The name of the service/app you are deploying these resources for"
  type        = string
}

variable "subnet_cidr_range" {
  description = "The range of internal addresses that are owned by this subnetwork. For example, 10.0.0.0/8 or 192.168.0.0/16"
  type        = string
}
