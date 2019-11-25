subscription_id                 =   "d2ac5dcc-a278-48dd-9d90-15ee38bcf70e"
location                        =   "centralus"
virtual_network_name            =   "VirtualNetwork-CE-PRD"
network_resource_group_name     =   "Networking-CE-PRD"
network_security_group_name     =   "NSG-CE-PRD"
managednetworks_inbound         = [
    "10.99.6.0/24",
    "10.100.3.0/24"
]
private_datacenters_networks    = [
    "172.17.0.0/16"
]
internal_subnet_name            =   "Subnet-Internal-PRD"
external_subnet_name            =   "Subnet-External-PRD"
internal_aks_subnet_name        =   "Subnet-AKS-INS-PRD"
external_aks_subnet_name        =   "Subnet-AKS-DMZ-PRD"
database_subnet_name            =   "Subnet-Data-PRD"