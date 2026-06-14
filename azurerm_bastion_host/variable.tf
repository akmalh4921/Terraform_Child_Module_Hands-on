variable "bsns" {
  description = "Map of Azure Bastion Host configurations"
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    ip_configuration = object({
      name                 = string
      subnet_id            = string
      public_ip_address_id = string
    })
  }))
}

variable "ipconfigs" {
  description = "Map of Azure Public IP configurations"
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
    sku                 = string
  }))
}
