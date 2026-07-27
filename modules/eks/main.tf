module "eks" {

  source  = "terraform-aws-modules/eks/aws"
  version = "20.37.2"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnet_ids

  enable_irsa = true

  cluster_endpoint_public_access  = var.endpoint_public_access
  cluster_endpoint_private_access = var.endpoint_private_access

  cluster_endpoint_public_access_cidrs = var.public_access_cidrs

  eks_managed_node_groups = {

    default = {

      desired_size = var.desired_size
      min_size     = var.min_size
      max_size     = var.max_size

      instance_types = var.instance_types

      disk_size = var.disk_size

      capacity_type = var.capacity_type
    }
  }

  tags = var.tags
}