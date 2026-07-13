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
  validation {
    condition = alltrue([
      for k, v in var.network_interface_nat_rule_associations : (
        length(v.ip_configuration_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

