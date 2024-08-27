

resource "apstra_datacenter_resource_pool_allocation" "asn" {
  for_each     = local.asn_rags
  blueprint_id = "82a4dde9-eb98-4666-a010-d82f66296be4"
  pool_ids     = [one(apstra_asn_pool.rag).id]
  role         = lookup(local.rosetta, each.value, each.value)
}

resource "apstra_datacenter_resource_pool_allocation" "ipv4" {
  for_each        = local.ipv4_rags
  blueprint_id    = "82a4dde9-eb98-4666-a010-d82f66296be4"
  pool_ids        = [one(apstra_ipv4_pool.rag).id]
  role            = startswith(each.key, "rag_ip_sz:") ? regex("(?P<a>^sz:)(?P<b>.*,)(?P<role>.*$)", each.value)["role"] : lookup(local.rosetta, each.value, each.value)
  routing_zone_id = startswith(each.key, "rag_ip_sz:") ? regex("(?P<a>^sz:)(?P<rzid>.*)(?P<b>,.*$)", each.value)["rzid"] : null
}

resource "apstra_datacenter_resource_pool_allocation" "ipv6" {
  for_each        = local.ipv6_rags
  blueprint_id    = "82a4dde9-eb98-4666-a010-d82f66296be4"
  pool_ids        = [one(apstra_ipv6_pool.rag).id]
  role            = startswith(each.key, "rag_ipv6_sz:") ? regex("(?P<a>^sz:)(?P<b>.*,)(?P<role>.*$)", each.value)["role"] : lookup(local.rosetta, each.value, each.value)
  routing_zone_id = startswith(each.key, "rag_ipv6_sz:") ? regex("(?P<a>^sz:)(?P<rzid>.*)(?P<b>,.*$)", each.value)["rzid"] : null
}

resource "apstra_datacenter_resource_pool_allocation" "vni" {
  for_each     = local.vni_rags
  blueprint_id = "82a4dde9-eb98-4666-a010-d82f66296be4"
  pool_ids     = [one(apstra_vni_pool.rag).id]
  role         = lookup(local.rosetta, each.value, each.value)
}
