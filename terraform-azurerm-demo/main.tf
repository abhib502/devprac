#This is the main configuration file for Terraform. It is used to define the resources that will be created in Azure.
#The provider block is used to configure the Azure provider. It specifies the version of the provider that will be used and any features that should be enabled.
#The required_providers block is used to specify the required providers for the configuration. In this case, we are using the azurerm provider from HashiCorp. The source attribute specifies the location of the provider, and the version attribute specifies the version of the provider that will be used.
#The features block is used to enable any features that are available for the provider. In this case, we are enabling all features for the azurerm provider.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.23.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = ""
}
#This is multi-line comment in Terraform. It is used to provide additional information about the configuration.
resource "azurerm_resource_group" "rg_block" {
  name     = "rg_abhi"
  location = "East US"
}
resource "azurerm_storage_account" "strg_block" {
  name                     = "strg_abhi"
  resource_group_name      = azurerm_resource_group.rg_block.name
  location                 = azurerm_resource_group.rg_block.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
}