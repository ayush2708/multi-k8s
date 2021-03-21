terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "6a0bf717-dd86-4c23-834a-f6a048b6c295"
  tenant_id       = "6a0bf717-dd86-4c23-834a-f6a048b6c295"
}