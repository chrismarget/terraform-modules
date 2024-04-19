output "ids" { value = toset(flatten([for k, v in data.apstra_datacenter_interfaces_by_link_tag.each : v.ids])) }
