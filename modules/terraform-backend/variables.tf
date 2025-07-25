variable "resource_group_name" {
  description = "The name of the resource group for the Terraform backend."
  type        = string
}

variable "location" {
  description = "The Azure location where the resource group will be created."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account for the Terraform backend."
  type        = string
  validation {
    condition     = length(var.storage_account_name) >= 3 && length(var.storage_account_name) <= 24
    error_message = "Storage account name must be between 3 and 24 characters long."
  }
}

variable "environment" {
  description = "The environment tag for the resources."
  type        = string
}

variable "container_name" {
  description = "The name of the storage container for the Terraform backend."
  type        = string
  }  
