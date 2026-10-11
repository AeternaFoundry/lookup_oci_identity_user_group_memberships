variable "identity_user_group_memberships_lookup" {
  description = <<EOT
Map of identity_user_group_memberships_lookup, attributes below
Required:
    - compartment_id
Optional:
    - group_id
    - user_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    group_id       = optional(string)
    user_id        = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

