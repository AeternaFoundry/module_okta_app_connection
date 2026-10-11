output "app_connections_action" {
  description = "Map of action values across all app_connections, keyed the same as var.app_connections except keys with no action are omitted"
  value       = { for k, v in okta_app_connection.app_connections : k => v.action if v.action != null && length(v.action) > 0 }
}
output "app_connections_base_url" {
  description = "Map of base_url values across all app_connections, keyed the same as var.app_connections except keys with no base_url are omitted"
  value       = { for k, v in okta_app_connection.app_connections : k => v.base_url if v.base_url != null && length(v.base_url) > 0 }
}
output "app_connections_id" {
  description = "Map of id values across all app_connections, keyed the same as var.app_connections except keys with no id are omitted"
  value       = { for k, v in okta_app_connection.app_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_connections_profile" {
  description = "Map of profile values across all app_connections, keyed the same as var.app_connections except keys with no profile are omitted"
  value       = { for k, v in okta_app_connection.app_connections : k => v.profile if v.profile != null && length(v.profile) > 0 }
  sensitive   = true
}
output "app_connections_status" {
  description = "Map of status values across all app_connections, keyed the same as var.app_connections except keys with no status are omitted"
  value       = { for k, v in okta_app_connection.app_connections : k => v.status if v.status != null && length(v.status) > 0 }
}

