
provider "azurerm" {
    features {}
}

terraform {
  backend "azurerm" {
    resource_group_name = "storage-account"
    storage_account_name = "storageaccount2809"
    container_name = "tfstate"
    key = "terraform.tfstate"
    
  }
}
resource "azurerm_resource_group" "rg" {
    name = "Networking"
    location = "eastus"
}