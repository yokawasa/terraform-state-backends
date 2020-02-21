terraform {
  backend "azurerm" {
    resource_group_name   = "dev-ftstate-rg"
    storage_account_name  = "tfstatestore"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "dummy-resource" {
  name     = "dummy-rg"
  location = "japaneast"
}
