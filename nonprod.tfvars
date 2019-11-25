subscription_id                 =   "3b7d0560-3be1-45d8-87f2-f3ec96f3d153"
location                        =   "eastus2"
virtual_network_name            =   "VirtualNetwork-CE-STG"
network_resource_group_name     =   "Networking-CE-STG"
network_security_group_name     =   "NSG-EC2-STG"
managednetworks_inbound         = [
    {fidencio-office-dev    = "172.16.103.0/24"},
    {fidencio-office-infra  = "172.16.130.0/26"},
    {gomes-office-dev       = "172.16.199.0/24"},
    {gomes-office-dev       = "172.16.198.0/24"},
    {genjusto-office-dev    = "172.16.2.0/23"},
    {genjusto-office-dev    = "172.16.31.0/24"},
    {passeio-office-dev     = "172.26.18.0/23"},
    {passeio-office-dev     = "172.26.8.0/22"}, 
    {gomes-vpn-all          = "172.16.211.0/24"},
    {genjusto-vpn-all       = "172.16.252.0/24"},
    {passeio-vpn-all        = "172.26.40.0/24"},                 
]
private_datacenters_networks    = [
    {servercentral  = "172.19.0.0/16"},
]
internal_subnet_name            =   "Subnet-Internal-STG"
external_subnet_name            =   "Subnet-External-STG"
internal_aks_subnet_name        =   "Subnet-AKS-INS-STG"
external_aks_subnet_name        =   "Subnet-AKS-DMZ-STG"
database_subnet_name            =   "Subnet-Data-STG"