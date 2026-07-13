variable "network_interface_nat_rule_associations" {
  description = <<EOT
Map of network_interface_nat_rule_associations, attributes below
Required:
    - ip_configuration_name
    - nat_rule_id
    - network_interface_id
EOT

  type = map(object({
    ip_configuration_name = string
    nat_rule_id           = string
    network_interface_id  = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_network_interface_nat_rule_association's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: network_interface_id
  #   source:    [from commonids.ValidateNetworkInterfaceID] !ok
  # path: network_interface_id
  #   source:    [from commonids.ValidateNetworkInterfaceID] err != nil
  # path: ip_configuration_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: nat_rule_id
  #   source:    [from loadbalancers.ValidateInboundNatRuleID] !ok
  # path: nat_rule_id
  #   source:    [from loadbalancers.ValidateInboundNatRuleID] err != nil
}

