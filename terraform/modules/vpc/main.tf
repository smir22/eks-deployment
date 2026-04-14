# VPC Section
resource "aws_vpc" "eks_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = merge(
    var.tags, {
      Name = var.vpc_name
  })
}

# Subnet Section
resource "aws_subnet" "eks_subnet_private" {
  for_each          = var.private_subnets
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = each.value.cidr
  availability_zone = each.value.az

  tags = merge(var.tags, {
    Name                              = each.key
    "kubernetes.io/role/internal-elb" = "1"
  })
}

resource "aws_subnet" "eks_subnet_public" {
  for_each                = var.public_subnets
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  tags = merge(var.tags, {
    Name                     = each.key
    "kubernetes.io/role/elb" = "1"
  })
}

# IGW Section

# NAT Section

# NAT Section