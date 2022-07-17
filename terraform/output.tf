### Output RG ###

output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

### Output PublicIPs ###

output "vm_public_ip_master" {
  value = azurerm_public_ip.myPublicIpMaster.id
}

output "vm_public_ip_nfs" {
  value = azurerm_public_ip.myPublicIpNfs.id
}

output "vm_public_ip_worker" {
  value = azurerm_public_ip.myPublicIpWorker.id
}

### Output VMs ###

output "vm_id_master" {
  value = azurerm_linux_virtual_machine.myVMMaster.id
}

output "vm_id_nfs" {
  value = azurerm_linux_virtual_machine.myVMNfs.id
}

output "vm_id_worker" {
  value = azurerm_linux_virtual_machine.myVMWorker.id
}