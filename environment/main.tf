module "resource_group" {
  source = "../module/azurerm_resource_group"
 rgs = var.rg-dev
}

module "storage_account" {
    depends_on = [module.resource_group]
  source = "../module/azurerm_storage_account"
  storage_accounts = var.str
}