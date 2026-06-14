bsns = {
  bsn1 = {
    name                = "bsn-101"
    resource_group_name = "rg-101"
    location            = "westus"
    ip_configuration = {
      name                 = "ipconfig-101"
      subnet_id            = "/subscriptions/bdb89ac3-e42b-4f59-993e-7dde7e60d4e0/resourceGroups/rg-101/providers/Microsoft.Network/virtualNetworks/vnet-101/subnets/AzureBastionSubnet"
      public_ip_address_id = "/subscriptions/bdb89ac3-e42b-4f59-993e-7dde7e60d4e0/resourceGroups/rg-101/providers/Microsoft.Network/publicIPAddresses/ip-101"
    }
  }

  bsn2 = {
    name                = "bsn-102"
    resource_group_name = "rg-102"
    location            = "eastus"
    ip_configuration = {
      name                 = "ipconfig-102"
      subnet_id            = "/subscriptions/bdb89ac3-e42b-4f59-993e-7dde7e60d4e0/resourceGroups/rg-102/providers/Microsoft.Network/virtualNetworks/vnet-102/subnets/AzureBastionSubnet"
      public_ip_address_id = "/subscriptions/bdb89ac3-e42b-4f59-993e-7dde7e60d4e0/resourceGroups/rg-102/providers/Microsoft.Network/publicIPAddresses/ip-102"
    }
  }
}

ipconfigs = {
  ipconfig1 = {
    name                = "ip-101"
    resource_group_name = "rg-101"
    location            = "westus"
    allocation_method   = "Static"
    sku                 = "Standard"
  }

  ipconfig2 = {
    name                = "ip-102"
    resource_group_name = "rg-102"
    location            = "eastus"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
}
