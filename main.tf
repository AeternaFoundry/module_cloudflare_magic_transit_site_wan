resource "cloudflare_magic_transit_site_wan" "magic_transit_site_wans" {
  for_each = var.magic_transit_site_wans

  account_id        = each.value.account_id
  physport          = each.value.physport
  site_id           = each.value.site_id
  name              = each.value.name
  priority          = each.value.priority
  static_addressing = each.value.static_addressing
  vlan_tag          = each.value.vlan_tag
}

