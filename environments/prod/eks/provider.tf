provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "multi-cloud-kubernetes-platform"
      Environment = "prod"
      ManagedBy   = "Terraform"
    }
  }
}