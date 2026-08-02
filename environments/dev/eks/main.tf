module "eks" {

  source = "../../../modules/eks"

  cluster_name       = var.cluster_name
  cluster_version    = var.cluster_version

  vpc_id             = var.vpc_id
  private_subnet_ids = var.private_subnet_ids

  instance_types = var.instance_types

  desired_size = var.desired_size
  min_size     = var.min_size
  max_size     = var.max_size

  disk_size = var.disk_size

  capacity_type = var.capacity_type

  endpoint_public_access  = var.endpoint_public_access
  endpoint_private_access = var.endpoint_private_access

  public_access_cidrs = var.public_access_cidrs

  tags = local.common_tags
}