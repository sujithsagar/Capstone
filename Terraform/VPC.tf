module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.11.0"
  name = var.VPC_Name
  cidr = var.CIDR
  azs = ["us-east-1a", "us-east-1b"]
  private_subnets = [var.Private_Subnet_a, var.Private_Subnet_b]
  public_subnets  = [var.Public_Subnet_a, var.Public_Subnet_b]
  enable_nat_gateway  = true
  single_nat_gateway  = true
  private_subnet_tags = {
      "kubernetes.io/cluster/my-eks-201" = "shared",
      "kubernetes.io/role/internal-elb" = "1"
  }

  public_subnet_tags = {
      "kubernetes.io/cluster/my-eks-201" = "shared",
      "kubernetes.io/role/elb" = "1"
  }
  tags = {
    Terraform = "true"
    Environment = "EKS"
  }
}

output "VPC_Name" {
    value = module.vpc.name
}

output "VPC_ID" {
    value = module.vpc.vpc_id
}

output "Private_Subnet_IDs" {
    value = module.vpc.private_subnets
}

output "Public_Subnet_IDs" {
    value = module.vpc.public_subnets
}

output "NAT_Gate_Way_ID" {
    value = module.vpc.nat_ids
}

output "IGW_ID" {
    value = module.vpc.igw_id
}
