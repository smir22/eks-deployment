terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  # backend "s3" {
  #   bucket       = "smvf-s3-bucket-test"
  #   key          = "eks-proj/s3-boostrap/terraform.tfstate"
  #   region       = local.region
  #   encrypt      = true
  #   use_lockfile = true
  # }
}

# Configure the AWS Provider
provider "aws" {
  region = local.region
}

