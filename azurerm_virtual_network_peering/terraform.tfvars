vnet_peering = {
  peering1 = {
    
  name                      = "peer101to102"
  resource_group_name       = "rg-101"
  virtual_network_name      = "vnet-101"
  remote_virtual_network_id = "/subscriptions/bdb89ac3-e42b-4f59-993e-7dde7e60d4e0/resourceGroups/rg-102/providers/Microsoft.Network/virtualNetworks/vnet-102"
}
  peering2 = {
    
  name                      = "peer102to101"
  resource_group_name       = "rg-102"
  virtual_network_name      = "vnet-102"
  remote_virtual_network_id = "/subscriptions/bdb89ac3-e42b-4f59-993e-7dde7e60d4e0/resourceGroups/rg-101/providers/Microsoft.Network/virtualNetworks/vnet-101"
}

  }
