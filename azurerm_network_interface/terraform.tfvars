nics = {
  nic1 = {
    name                          = "nic-101"
    resource_group_name           = "rg-101"
    location                      = "westus"
    ip_name                       = "ip-101"
    subnet_id                     = "/subscriptions/bdb89ac3-e42b-4f59-993e-7dde7e60d4e0/resourceGroups/rg-101/providers/Microsoft.Network/virtualNetworks/vnet-101/subnets/subnet_101"
    private_ip_address_allocation = "Dynamic"

  }

  nic2 = {
    name                          = "nic-102"
    resource_group_name           = "rg-102"
    location                      = "eastus"
    ip_name                       = "ip-102"
    subnet_id                     = "/subscriptions/bdb89ac3-e42b-4f59-993e-7dde7e60d4e0/resourceGroups/rg-102/providers/Microsoft.Network/virtualNetworks/vnet-102/subnets/subnet_102"
    private_ip_address_allocation = "Dynamic"
  }
}



