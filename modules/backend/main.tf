resource "azurerm_resource_group" "rg_backend_state" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "sa_backend_state" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg_backend_state.name
  location                 = azurerm_resource_group.rg_backend_state.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = var.environment
    project     = var.project_name
    owner       = var.project_owner

  }
}

resource "azurerm_storage_container" "container_backend_state" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.sa_backend_state.id
  container_access_type = "private"
}