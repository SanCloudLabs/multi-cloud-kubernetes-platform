variable "cluster_name" {
  description = "AKS cluster name"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version"
  type        = string
}

variable "resource_group_name" {
  description = "Existing resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "subnet_id" {
  description = "Existing subnet ID"
  type        = string
}

variable "vm_size" {
  description = "AKS node VM size"
  type        = string
  default     = "Standard_B2s"
}

variable "node_count" {
  description = "Number of worker nodes"
  type        = number
  default     = 2
}

variable "sku_tier" {
  description = "AKS SKU tier"
  type        = string
  default     = "Free"
}

variable "node_pool_name" {
  description = "System node pool name"
  type        = string
  default     = "system"
}

variable "automatic_upgrade_channel" {
  description = "Automatic Kubernetes patch upgrade channel"
  type        = string
  default     = "patch"
}

variable "os_disk_type" {
  description = "OS disk type for AKS nodes"
  type        = string
  default     = "Managed"
}

variable "os_disk_size_gb" {
  description = "OS disk size in GB"
  type        = number
  default     = 64
}

variable "max_pods" {
  description = "Maximum pods per node"
  type        = number
  default     = 30
}

variable "temporary_name_for_rotation" {
  description = "Temporary node pool name during upgrades"
  type        = string
  default     = "rotate"
}

variable "tags" {
  description = "Tags applied to all Azure resources"
  type        = map(string)

  default = {}
}
