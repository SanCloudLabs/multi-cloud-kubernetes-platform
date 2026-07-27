variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "Existing Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "cluster_name" {
  description = "AKS cluster name"
  type        = string
}

variable "cluster_version" {
  description = "AKS Kubernetes version"
  type        = string
}

variable "subnet_id" {
  description = "Existing subnet ID"
  type        = string
}

variable "vm_size" {
  description = "AKS node VM size"
  type        = string
}

variable "node_count" {
  description = "Number of AKS nodes"
  type        = string
}