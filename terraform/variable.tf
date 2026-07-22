variable "region" {
  default = "ap-south-1"
}

variable "environment1" {
  default = "dev"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = ""
}