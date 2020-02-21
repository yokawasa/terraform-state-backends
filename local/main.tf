terraform {
  backend "local" {
    # path = "relative-path-to/terraform.tfstate"
    path = "state/terraform.tfstate"
  }
}
resource "azurerm_resource_group" "dummy-resource" {
  name     = "dummy-rg"
  location = "japaneast"
}
