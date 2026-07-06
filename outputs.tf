output "network_interface_nat_rule_associations" {
  description = "All network_interface_nat_rule_association resources"
  value       = azurerm_network_interface_nat_rule_association.network_interface_nat_rule_associations
}
output "network_interface_nat_rule_associations_ip_configuration_name" {
  description = "List of ip_configuration_name values across all network_interface_nat_rule_associations"
  value       = [for k, v in azurerm_network_interface_nat_rule_association.network_interface_nat_rule_associations : v.ip_configuration_name]
}
output "network_interface_nat_rule_associations_nat_rule_id" {
  description = "List of nat_rule_id values across all network_interface_nat_rule_associations"
  value       = [for k, v in azurerm_network_interface_nat_rule_association.network_interface_nat_rule_associations : v.nat_rule_id]
}
output "network_interface_nat_rule_associations_network_interface_id" {
  description = "List of network_interface_id values across all network_interface_nat_rule_associations"
  value       = [for k, v in azurerm_network_interface_nat_rule_association.network_interface_nat_rule_associations : v.network_interface_id]
}

