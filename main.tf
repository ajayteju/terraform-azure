
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
  name     = "myfirstresourcegroup"
  location = "eastus"
}

resource "azurerm_container_registry" "acr" {
  name                = "terraformdemoacr"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Premium"
  admin_enabled       = false
  georeplications {
    location                = "canadacentral"
    zone_redundancy_enabled = true
    tags                    = {}
  }
  georeplications {
    location                = "Brazil South"
    zone_redundancy_enabled = true
    tags                    = {}
  }
}


