variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where EKS will be deployed"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs"
  type        = list(string)
}

variable "instance_types" {
  description = "EC2 instance types"
  type        = list(string)

  default = [
    "t3.medium"
  ]
}

variable "desired_size" {
  description = "Desired node count"
  type        = number

  default = 2
}

variable "min_size" {
  description = "Minimum node count"
  type        = number

  default = 1
}

variable "max_size" {
  description = "Maximum node count"
  type        = number

  default = 3
}