locals {

  environment = "prod"

  common_tags = {
    Project     = "multi-cloud-kubernetes-platform"
    Environment = local.environment
    ManagedBy   = "Terraform"
  }

}