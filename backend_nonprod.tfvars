terraform {
  backend "azurerm" {
    resource_group_name  = "FinancialProducts-Common-EC2-STG"
    storage_account_name = "stacce7d101f87"
    container_name       = "containerfinpdtsstg"
    key                  = "nsg.tfstate"
  }
}