resource "okta_app_connection" "app_connections" {
  for_each = var.app_connections

  action   = each.value.action
  base_url = each.value.base_url
  id       = each.value.id

  dynamic "profile" {
    for_each = each.value.profile != null ? each.value.profile : []
    content {
      auth_scheme = profile.value.auth_scheme
      client_id   = profile.value.client_id
      dynamic "settings" {
        for_each = profile.value.settings != null ? profile.value.settings : []
        content {
          admin_password = settings.value.admin_password
          admin_username = settings.value.admin_username
        }
      }
      dynamic "signing" {
        for_each = profile.value.signing != null ? profile.value.signing : []
        content {
          rotation_mode = signing.value.rotation_mode
        }
      }
      token = profile.value.token
    }
  }
}

