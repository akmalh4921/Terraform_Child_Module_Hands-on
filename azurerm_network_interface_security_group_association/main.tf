resource "azurerm_network_interface_security_group_association" "nicnsgasscn" {
  for_each = var.nic_nsg_asscn
  
  network_interface_id      = each.value.network_interface_id
  network_security_group_id = each.value.network_security_group_id
}