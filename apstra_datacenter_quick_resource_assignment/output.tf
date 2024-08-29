output "asn_pool_id" { value = length(apstra_asn_pool.rag) > 0 ? apstra_asn_pool.rag[0].id : null }
output "ipv4_pool_id" { value = length(apstra_ipv4_pool.rag) > 0 ? apstra_ipv4_pool.rag[0].id : null }
output "ipv6_pool_id" { value = length(apstra_ipv6_pool.rag) > 0 ? apstra_ipv6_pool.rag[0].id : null }
output "vni_pool_id" { value = length(apstra_vni_pool.rag) > 0 ? apstra_vni_pool.rag[0].id : null }
