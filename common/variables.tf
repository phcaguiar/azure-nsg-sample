variable "location" {
  default       =   "centralus"
  description   =   "Azure Location"
}

variable "resource_group_name" {
  default       =   "FinancialProducts-Common-CE-STG"
  description   =   "Resource Group Name"
}


variable "os_profile_admin_username" {
  default       =   "infra"
  description   =   "VM OS Profile Admin Username"
}

variable "os_profile_admin_password" {
  description   =   "VM OS Profile Admin Password"
}