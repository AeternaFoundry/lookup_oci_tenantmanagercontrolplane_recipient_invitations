variable "tenantmanagercontrolplane_recipient_invitations_lookup" {
  description = <<EOT
Map of tenantmanagercontrolplane_recipient_invitations_lookup, attributes below
Required:
    - compartment_id
Optional:
    - sender_tenancy_id
    - state
    - status
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id    = string
    sender_tenancy_id = optional(string)
    state             = optional(string)
    status            = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

