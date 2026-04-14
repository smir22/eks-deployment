locals {
  region      = "eu-west-2"
  bucket_name = "smir-eks"
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
  }
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "private_subnets" {
  description = "map of private subnets, cidr + az"
  type        = map(string)
}

variable "public_subnets" {
  description = "map of public subnets, cidr + az"
  type        = map(string)
}