variable "blueprint_id" {
  type = string
}

variable "asn_ranges" {
  type = set(
    object({
      first = number
      last  = number
    })
  )
  default = [{ first = 10000, last = 19999 }]
}

variable "ipv4_subnets" {
  type = set(
    object({
      network = string
    })
  )
  default = [{network = "100.64.0.0/10"}]
}

variable "ipv6_subnets" {
  type = set(
    object({
      network = string
    })
  )
  default = [{network = "3fff::/20"}]
}

variable "vni_ranges" {
  type = set(
    object({
      first = number
      last  = number
    })
  )
  default = [{ first = 10000, last = 19999 }]
}
