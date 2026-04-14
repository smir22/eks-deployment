output "vpc_cidr" {
  value       = aws_vpc.eks_vpc.cidr_block
  description = "EKS VPC CIDR block"
}

output "vpc_id" {
  value       = aws_vpc.eks_vpc.id
  description = "EKS VPC ID"
}