variable "aws_region" {
  description = "AWS region where the EKS cluster will be deployed"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
}

variable "vpc_id" {
  description = "Existing VPC ID"
  type        = string
}

variable "private_subnet_ids" {
  description = "Existing private subnet IDs"
  type        = list(string)
}

variable "instance_types" {
  type = list(string)
}

variable "desired_size" {
  type = number
}

variable "min_size" {
  type = number
}

variable "max_size" {
  type = number
}

variable "disk_size" {
  description = "Worker node disk size"
  type        = number
}

variable "capacity_type" {
  description = "Worker node capacity type"
  type        = string
}

variable "endpoint_public_access" {
  description = "Enable public API endpoint"
  type        = bool
}

variable "endpoint_private_access" {
  description = "Enable private API endpoint"
  type        = bool
}

variable "public_access_cidrs" {
  description = "Allowed CIDRs for public API endpoint"
  type        = list(string)
}