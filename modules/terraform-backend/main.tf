resource "azurerm_resource_group" "rg_remote_state" {
  name     = var.resource_group_name
  location = var.location
}

resource  "azurerm_storage_account" "sa_remote_state" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg_remote_state.name
  location                 = azurerm_resource_group.rg_remote_state.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = var.environment
  }
}

resource "azurerm_storage_container" "container_remote_state" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.sa_remote_state.id
  container_access_type = "private"
}