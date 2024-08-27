data "apstra_blueprint_query" "rags" {
  blueprint_id = var.blueprint_id
  query        = "node(type='resource_allocation_group', name='rag')"
}

locals {
  // Filter the graph query output into four maps based on resource type.
  asn_rags  = { for i in jsondecode(data.apstra_blueprint_query.rags.result).items : i.rag.id => i.rag.label if i.rag.resource_type == "asn" }
  ipv4_rags = { for i in jsondecode(data.apstra_blueprint_query.rags.result).items : i.rag.id => i.rag.label if i.rag.resource_type == "ip" }
  ipv6_rags = { for i in jsondecode(data.apstra_blueprint_query.rags.result).items : i.rag.id => i.rag.label if i.rag.resource_type == "ipv6" }
  vni_rags  = { for i in jsondecode(data.apstra_blueprint_query.rags.result).items : i.rag.id => i.rag.label if i.rag.resource_type == "vni" }
}
