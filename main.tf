
provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "storage-account"
    storage_account_name = "storageaccount2809"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

  }
}

# create a resource group if it doesnt exist
resource "azurerm_resource_group" "rg" {
    for_each = {
        dev = "eastus"
        test = "westus2"
        prod = "australiacentral"
    }

  name     = each.key
  location = each.value
}




