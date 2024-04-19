data "apstra_datacenter_interfaces_by_link_tag" "each" {
  for_each     = var.tags
  blueprint_id = var.blueprint_id
  tags         = [each.key]
}
