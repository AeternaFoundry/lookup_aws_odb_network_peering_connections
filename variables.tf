variable "odb_network_peering_connections_lookup" {
  description = <<EOT
Map of odb_network_peering_connections_lookup, attributes below
Optional:
    - region
EOT

  type = map(object({
    region = optional(string)
  }))
}

