data "aws_odb_network_peering_connections" "odb_network_peering_connections_lookup" {
  for_each = var.odb_network_peering_connections_lookup

  region = each.value.region
}

