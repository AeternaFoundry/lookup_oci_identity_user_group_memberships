data "oci_identity_user_group_memberships" "identity_user_group_memberships_lookup" {
  for_each = var.identity_user_group_memberships_lookup

  compartment_id = each.value.compartment_id
  group_id       = each.value.group_id
  user_id        = each.value.user_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

