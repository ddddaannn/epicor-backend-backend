####################################
# Resource configuration variables #
####################################
variable "resource_group_name" {
  description = "The name of the resource group where the resources will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account for backend state."
  type        = string
}

variable "container_name" {
  description = "The name of the storage container for backend state."
  type        = string
}

###########################################################
# Tagging variables to help identify and manage resources #
###########################################################
variable "environment" {
  description = "The environment tag for the backend resources."
  type        = string
}

variable "project_name" {
  description = "The name of the project for tagging purposes."
  type        = string
}

variable "project_owner" {
  description = "The owner of the project for tagging purposes."
  type        = string
}