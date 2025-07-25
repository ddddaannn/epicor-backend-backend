module "backend" {
source = "../../modules/backend"
resource_group_name = var.resource_group_name
location = var.location
storage_account_name = var.storage_account_name
container_name = var.container_name
environment = var.environment
project_name = var.project_name
project_owner = var.project_owner
}