output "app_connections_action" {
  description = "Map of action values across all app_connections, keyed the same as var.app_connections"
  value       = { for k, v in okta_app_connection.app_connections : k => v.action }
}
output "app_connections_base_url" {
  description = "Map of base_url values across all app_connections, keyed the same as var.app_connections"
  value       = { for k, v in okta_app_connection.app_connections : k => v.base_url }
}
output "app_connections_id" {
  description = "Map of id values across all app_connections, keyed the same as var.app_connections"
  value       = { for k, v in okta_app_connection.app_connections : k => v.id }
}
output "app_connections_profile" {
  description = "Map of profile values across all app_connections, keyed the same as var.app_connections"
  value       = { for k, v in okta_app_connection.app_connections : k => v.profile }
  sensitive   = true
}
output "app_connections_status" {
  description = "Map of status values across all app_connections, keyed the same as var.app_connections"
  value       = { for k, v in okta_app_connection.app_connections : k => v.status }
}

