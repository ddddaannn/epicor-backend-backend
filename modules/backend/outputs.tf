output "resource_group_name" {
  description = "The name of the resource group where the backend resources are deployed."
  value       = azurerm_resource_group.rg_backend_state.name
}

output "location" {
  description = "The Azure region where the backend resources are deployed."
  value       = azurerm_resource_group.rg_backend_state.location
}

output "storage_account_name" {
  description = "The name of the storage account for backend state."
  value       = azurerm_storage_account.sa_backend_state.name
}

output "tag" {
  description = "The environment tag for the backend resources."
  value       = azurerm_storage_account.sa_backend_state.tags["environment"]
}   

output "container_name" {
  description = "The name of the storage container for backend state."
  value       = azurerm_storage_container.container_backend_state.name
}

output "storage_account_id" {
  description = "The ID of the storage account for backend state."
  value       = azurerm_storage_account.sa_backend_state.id
}
