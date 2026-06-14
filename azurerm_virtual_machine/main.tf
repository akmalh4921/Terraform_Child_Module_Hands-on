resource "azurerm_virtual_machine" "vml" {
  for_each = var.vm_linux

  name                  = each.value.vm_name
  location              = each.value.location
  resource_group_name   = each.value.rg_name
  network_interface_ids = each.value.nic_id
  vm_size               = each.value.vm_size

  storage_image_reference {
    publisher = each.value.storage_image_reference.publisher
    offer     = each.value.storage_image_reference.offer
    sku       = each.value.storage_image_reference.sku
    version   = each.value.storage_image_reference.version
  }

  storage_os_disk {
    name              = each.value.storage_os_disk.name
    caching           = each.value.storage_os_disk.caching
    create_option     = each.value.storage_os_disk.create_option
    managed_disk_type = each.value.storage_os_disk.managed_disk_type
  }
  os_profile {
    computer_name  = each.value.os_profile.computer_name
    admin_username = each.value.os_profile.admin_username
    admin_password = each.value.os_profile.admin_password
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}








resource "azurerm_windows_virtual_machine" "windowsvm" {
  for_each = var.vm_windows

  name                  = each.value.vm_name
  location              = each.value.location
  resource_group_name   = each.value.rg_name
  network_interface_ids = each.value.nic_id
  size                  = each.value.vm_size
  admin_username        = each.value.admin_username
  admin_password        = each.value.admin_password


  source_image_reference {
    publisher = each.value.source_image_reference.publisher
    offer     = each.value.source_image_reference.offer
    sku       = each.value.source_image_reference.sku
    version   = each.value.source_image_reference.version
  }

  os_disk {

    caching              = each.value.os_disk.caching
    storage_account_type = each.value.os_disk.storage_account_type
    # osType =  each.value.os_disk.osType
    # createOption =  each.value.os_disk.createOption

}
}