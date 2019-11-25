terraform {
  backend "azurerm" {
    resource_group_name  = "FinancialProducts-Common-CE-PRD"
    storage_account_name = "stacc3a1ffcbd4"
    container_name       = "containerfinpdtsprd"
    key                  = "nsg.tfstate"
  }
}