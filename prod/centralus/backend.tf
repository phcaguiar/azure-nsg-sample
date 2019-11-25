terraform {
  backend "azurerm" {
    resource_group_name  = "FinancialProducts-Common-CE-STG"
    storage_account_name = "stacc0e3bc598c"
    container_name       = "containerfinpdtsstg"
    key                  = "terraform.tfstate"
  }
}
