module "eks" {

  source = "../../../modules/eks"

  instance_types  = ["t3.medium"]
  desired_size    = 3
  min_size        = 2
  max_size        = 4
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  vpc_id             = var.vpc_id
  private_subnet_ids = var.private_subnet_ids

}

