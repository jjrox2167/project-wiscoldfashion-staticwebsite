# This Terraform configuration file sets up an Azure Resource Group and a Storage Account for hosting a static website.
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.31.0"
    }
  }
}

provider "azurerm" {
    subscription_id = "be7a417d-9059-4dde-b684-456911bd77f9"
  features {}
}

resource "azurerm_resource_group" "rg-wiscoldfashion-prod" {
  name     = "rg-wiscoldfashion-prod"
  location = "Central US"
  tags = {
    environment   = "production"
    project       = "wiscoldfashion"
    department    = "IT"
    resource_type = "resource_group"
    location      = "Central US"
    CreatedBy     = "JulienBrown"
    source        = "Terraform"

  }
}

resource "azurerm_storage_account" "sa-wiscoldfashion-statweb" {
  name                     = "awiscoldfashionstatweb"
    # Ensure the name is globally unique and adheres to Azure's naming conventions
  resource_group_name      = azurerm_resource_group.rg-wiscoldfashion-prod.name
  # Use the resource group name defined above
  location                 = azurerm_resource_group.rg-wiscoldfashion-prod.location
  # Use the location defined in the resource group
  account_tier             = "Standard"
  account_replication_type = "GRS"
  account_kind            = "StorageV2"

  # Use StorageV2 for static website hosting

    tags = {
        environment   = "production"
        project       = "wiscoldfashion"
        department    = "IT"
        resource_type = "storage_account_staticweb"
        location      = "Central US"
        CreatedBy     = "JulienBrown"
        source        = "Terraform"
    }
    static_website {
        index_document = "index.html"
        error_404_document = "404.html"
    }
}