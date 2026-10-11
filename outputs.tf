output "identity_user_group_memberships_lookup_id" {
  description = "Map of id values across all identity_user_group_memberships_lookup, keyed the same as var.identity_user_group_memberships_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_identity_user_group_memberships.identity_user_group_memberships_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_user_group_memberships_lookup_compartment_id" {
  description = "Map of compartment_id values across all identity_user_group_memberships_lookup, keyed the same as var.identity_user_group_memberships_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_identity_user_group_memberships.identity_user_group_memberships_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "identity_user_group_memberships_lookup_filter" {
  description = "Map of filter values across all identity_user_group_memberships_lookup, keyed the same as var.identity_user_group_memberships_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_identity_user_group_memberships.identity_user_group_memberships_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "identity_user_group_memberships_lookup_group_id" {
  description = "Map of group_id values across all identity_user_group_memberships_lookup, keyed the same as var.identity_user_group_memberships_lookup except keys with no group_id are omitted"
  value       = { for k, v in data.oci_identity_user_group_memberships.identity_user_group_memberships_lookup : k => v.group_id if v.group_id != null && length(v.group_id) > 0 }
}
output "identity_user_group_memberships_lookup_memberships" {
  description = "Map of memberships values across all identity_user_group_memberships_lookup, keyed the same as var.identity_user_group_memberships_lookup except keys with no memberships are omitted"
  value       = { for k, v in data.oci_identity_user_group_memberships.identity_user_group_memberships_lookup : k => v.memberships if v.memberships != null && length(v.memberships) > 0 }
}
output "identity_user_group_memberships_lookup_user_id" {
  description = "Map of user_id values across all identity_user_group_memberships_lookup, keyed the same as var.identity_user_group_memberships_lookup except keys with no user_id are omitted"
  value       = { for k, v in data.oci_identity_user_group_memberships.identity_user_group_memberships_lookup : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

