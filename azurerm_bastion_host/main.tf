resource "azurerm_public_ip" "ipconfig" {
  for_each = var.ipconfigs

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = each.value.allocation_method
  sku                 = each.value.sku
}

resource "azurerm_bastion_host" "bsn" {
  for_each = var.bsns

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location

  ip_configuration {
    name                 = each.value.ip_configuration.name
    subnet_id            = each.value.ip_configuration.subnet_id
    public_ip_address_id = each.value.ip_configuration.public_ip_address_id
  }

  depends_on = [azurerm_public_ip.ipconfig]
}
