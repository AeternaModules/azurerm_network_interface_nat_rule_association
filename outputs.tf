output "network_interface_nat_rule_associations_id" {
  description = "Map of id values across all network_interface_nat_rule_associations, keyed the same as var.network_interface_nat_rule_associations"
  value       = { for k, v in azurerm_network_interface_nat_rule_association.network_interface_nat_rule_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_interface_nat_rule_associations_ip_configuration_name" {
  description = "Map of ip_configuration_name values across all network_interface_nat_rule_associations, keyed the same as var.network_interface_nat_rule_associations"
  value       = { for k, v in azurerm_network_interface_nat_rule_association.network_interface_nat_rule_associations : k => v.ip_configuration_name if v.ip_configuration_name != null && length(v.ip_configuration_name) > 0 }
}
output "network_interface_nat_rule_associations_nat_rule_id" {
  description = "Map of nat_rule_id values across all network_interface_nat_rule_associations, keyed the same as var.network_interface_nat_rule_associations"
  value       = { for k, v in azurerm_network_interface_nat_rule_association.network_interface_nat_rule_associations : k => v.nat_rule_id if v.nat_rule_id != null && length(v.nat_rule_id) > 0 }
}
output "network_interface_nat_rule_associations_network_interface_id" {
  description = "Map of network_interface_id values across all network_interface_nat_rule_associations, keyed the same as var.network_interface_nat_rule_associations"
  value       = { for k, v in azurerm_network_interface_nat_rule_association.network_interface_nat_rule_associations : k => v.network_interface_id if v.network_interface_id != null && length(v.network_interface_id) > 0 }
}

