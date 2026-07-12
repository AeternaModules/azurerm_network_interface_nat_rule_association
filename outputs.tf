output "network_interface_nat_rule_associations_ip_configuration_name" {
  description = "Map of ip_configuration_name values across all network_interface_nat_rule_associations, keyed the same as var.network_interface_nat_rule_associations"
  value       = { for k, v in azurerm_network_interface_nat_rule_association.network_interface_nat_rule_associations : k => v.ip_configuration_name }
}
output "network_interface_nat_rule_associations_nat_rule_id" {
  description = "Map of nat_rule_id values across all network_interface_nat_rule_associations, keyed the same as var.network_interface_nat_rule_associations"
  value       = { for k, v in azurerm_network_interface_nat_rule_association.network_interface_nat_rule_associations : k => v.nat_rule_id }
}
output "network_interface_nat_rule_associations_network_interface_id" {
  description = "Map of network_interface_id values across all network_interface_nat_rule_associations, keyed the same as var.network_interface_nat_rule_associations"
  value       = { for k, v in azurerm_network_interface_nat_rule_association.network_interface_nat_rule_associations : k => v.network_interface_id }
}

