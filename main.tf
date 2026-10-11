data "oci_tenantmanagercontrolplane_recipient_invitations" "tenantmanagercontrolplane_recipient_invitations_lookup" {
  for_each = var.tenantmanagercontrolplane_recipient_invitations_lookup

  compartment_id    = each.value.compartment_id
  sender_tenancy_id = each.value.sender_tenancy_id
  state             = each.value.state
  status            = each.value.status

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

