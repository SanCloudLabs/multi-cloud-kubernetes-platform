resource "azurerm_kubernetes_cluster" "this" {

  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.cluster_name

  kubernetes_version         = var.cluster_version
  sku_tier                  = var.sku_tier
  automatic_upgrade_channel = var.automatic_upgrade_channel

  default_node_pool {

    name                = var.node_pool_name

    vm_size             = var.vm_size
    node_count          = var.node_count

    vnet_subnet_id      = var.subnet_id

    os_disk_type        = var.os_disk_type
    os_disk_size_gb     = var.os_disk_size_gb

    max_pods            = var.max_pods

    temporary_name_for_rotation = var.temporary_name_for_rotation

    type = "VirtualMachineScaleSets"

    tags = {
      NodePool = "system"
    }
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {

    network_plugin      = "azure"

    load_balancer_sku   = "standard"

    network_policy      = "azure"

  }

  role_based_access_control_enabled = true

  oidc_issuer_enabled = true

  workload_identity_enabled = true

  image_cleaner_enabled = true

  image_cleaner_interval_hours = 168

  tags = var.tags

}