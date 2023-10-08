
provider "azurerm" {
  features {}
 subscription_id = "5c2e66e7-2ae8-4e6c-9b9f-1b85dac4bd5c"
 client_id = "9751a258-8779-4f9f-92b2-f8779ac2ff40"
 client_secret = "s8k8Q~g82TdGjz-3fC19RHwbFjdrr-pzOn2t_ajD"
 tenant_id = "5e2104fb-4350-4b26-a4c2-09afac783e46"
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




