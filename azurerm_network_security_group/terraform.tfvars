nsgs = {
  nsg1 = {
    name                = "NSG-101"
    resource_group_name = "rg-101"
    location            = "westus"
  
  security_rule ={
  name                       = "AllowSSHAndHTTP-101"
  priority                   = 100
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_ranges    = ["22", "80"]
  source_address_prefix      = "*"
  destination_address_prefix = "*"
}
  }

  nsg2 = {
    name                = "NSG-102"
    resource_group_name = "rg-102"
    location            = "eastus"

security_rule ={
  name                       = "AllowSSHAndHTTP-102"
  priority                   = 210
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_ranges    = ["22", "80"]
  source_address_prefix      = "*"
  destination_address_prefix = "*"
}
  }
  }
