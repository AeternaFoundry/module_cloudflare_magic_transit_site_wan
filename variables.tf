variable "magic_transit_site_wans" {
  description = <<EOT
Map of magic_transit_site_wans, attributes below
Required:
    - account_id
    - physport
    - site_id
Optional:
    - name
    - priority
    - static_addressing
    - vlan_tag
EOT

  type = map(object({
    account_id = string
    physport   = number
    site_id    = string
    name       = optional(string)
    priority   = optional(number)
    static_addressing = optional(object({
      address           = string
      gateway_address   = string
      secondary_address = optional(string)
    }))
    vlan_tag = optional(number)
  }))
}

