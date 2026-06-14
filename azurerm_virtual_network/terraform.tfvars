vnets = {
  vnet1 = {
    vnet_name           = "vnet-101"
    resource_group_name = "rg-101"
    location            = "westus"
    address_space       = ["10.142.0.0/16"]
  }
  vnet2 = {
    vnet_name           = "vnet-102"
    resource_group_name = "rg-102"
    location            = "eastus"
    address_space       = ["10.152.0.0/16"]
  }
}