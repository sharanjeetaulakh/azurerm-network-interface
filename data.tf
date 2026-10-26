data "azurerm_network_interface" "network_interface" {
  for_each = var.nics

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}