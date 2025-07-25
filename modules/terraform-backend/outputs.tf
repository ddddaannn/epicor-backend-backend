output "resource_group_name" {
  value = azurerm_resource_group.rg_remote_state.name
}

output "storage_account_name" {
  value = azurerm_storage_account.sa_remote_state.name
}

output "location" {
  value = azurerm_resource_group.rg_remote_state.location
}

output "container_name" {
  value = azurerm_storage_container.container_remote_state.name
}

output "storage_account_id" {
  value = azurerm_storage_account.sa_remote_state.id
}

output "container_id" {
  value = azurerm_storage_container.container_remote_state.id
}
