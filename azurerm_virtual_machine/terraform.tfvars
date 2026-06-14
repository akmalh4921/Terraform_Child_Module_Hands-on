vm_linux = {
  vm_linux_frontend = {
    vm_name  = "vm-frontend-101"
    rg_name  = "rg-101"
    location = "westus"
    nic_id   = ["/subscriptions/bdb89ac3-e42b-4f59-993e-7dde7e60d4e0/resourceGroups/rg-101/providers/Microsoft.Network/networkInterfaces/nic-101"]
    vm_size  = "Standard_D2S_v3"

    storage_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }


    storage_os_disk = {
      name              = "osdisk-101"
      caching           = "ReadWrite"
      create_option     = "FromImage"
      managed_disk_type = "Standard_LRS"
    }

    os_profile = {
      computer_name  = "Frontend-Ubuntu"
      admin_username = "devopsadmin"
      admin_password = "Devops@12345"
    }
  }
}









vm_windows = {
  vm_window = {
    vm_name        = "vm-backend-102"
    rg_name        = "rg-102"
    location       = "eastus"
    nic_id         = ["/subscriptions/bdb89ac3-e42b-4f59-993e-7dde7e60d4e0/resourceGroups/rg-102/providers/Microsoft.Network/networkInterfaces/nic-102"]
    vm_size        = "Standard_D2s_v3"
    admin_username = "devopsadmin"
    admin_password = "Devops@12345"

    source_image_reference = {
      publisher = "MicrosoftWindowsServer"
      offer     = "WindowsServer"
      sku       = "2019-datacenter"
      version   = "latest"
    }
    os_disk = {
      # osType = "Windows"
      # createOption = "FromImage"
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"

    }
  }
}