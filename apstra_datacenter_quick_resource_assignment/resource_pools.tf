resource "apstra_asn_pool" "rag" {
  count = length(local.asn_rags) > 0 ? 1 : 0
  name  = "TF Auto Resource"
  ranges = var.asn_ranges
}

resource "apstra_ipv4_pool" "rag" {
  count = length(local.ipv4_rags) > 0 ? 1 : 0
  name  = "TF Auto Resource"
  subnets = var.ipv4_subnets
}

resource "apstra_ipv6_pool" "rag" {
  count = length(local.ipv6_rags) > 0 ? 1 : 0
  name  = "TF Auto Resource"
  subnets = var.ipv6_subnets
}

resource "apstra_vni_pool" "rag" {
  count = length(local.vni_rags) > 0 ? 1 : 0
  name  = "TF Auto Resource"
  ranges = var.vni_ranges
}
