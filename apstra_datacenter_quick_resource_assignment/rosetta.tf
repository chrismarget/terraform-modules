locals {
  // Some resource group application "roles" use different identifiers than those found on
  // resource_allocation_group nodes in the graph db. This map translates strings found in
  // the graph (key/left) to the strings that terraform expects (value/right).
  rosetta = {
    ipv6_spine_superspine_link_ips  = "spine_superspine_link_ips_ipv6"
    ipv6_spine_leaf_link_ips        = "spine_leaf_link_ips_ipv6"
    leaf_l3_peer_link_link_ips      = "leaf_l3_peer_links"
    ipv6_leaf_l3_peer_link_link_ips = "leaf_l3_peer_links_ipv6"
    vxlan_vn_ids                    = "vni_virtual_network_ids"
    ipv6_to_generic_link_ips        = "to_generic_link_ips_ipv6"
  }
}
