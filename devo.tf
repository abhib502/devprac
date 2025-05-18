terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.28.0"
    }
  }
}

provider "azurerm" {
    subscription_id = "9411e33c-c9ad-489f-961e-fcafe36b53f6"
}