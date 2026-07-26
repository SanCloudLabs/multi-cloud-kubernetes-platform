module "aks" {

  source = "../../../modules/aks"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  resource_group_name = var.resource_group_name
  location            = var.location

  subnet_id = var.subnet_id

  vm_size = "Standard_B2s"

  node_count = 2

  tags = local.common_tags

}