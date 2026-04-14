locals {
  region = "eu-west-2"
  bucket_name = "smir-eks"
  tags = {
    Project   = "eks-deployment"
    ManagedBy = "terraform"
  }
}
