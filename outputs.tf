output "odb_network_peering_connections_lookup_odb_peering_connections" {
  description = "Map of odb_peering_connections values across all odb_network_peering_connections_lookup, keyed the same as var.odb_network_peering_connections_lookup"
  value       = { for k, v in data.aws_odb_network_peering_connections.odb_network_peering_connections_lookup : k => v.odb_peering_connections if v.odb_peering_connections != null && length(v.odb_peering_connections) > 0 }
}
output "odb_network_peering_connections_lookup_region" {
  description = "Map of region values across all odb_network_peering_connections_lookup, keyed the same as var.odb_network_peering_connections_lookup"
  value       = { for k, v in data.aws_odb_network_peering_connections.odb_network_peering_connections_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

