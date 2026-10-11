variable "app_connections" {
  description = <<EOT
Map of app_connections, attributes below
Required:
    - action
    - base_url
    - id
Optional:
    - profile (block):
        - auth_scheme (required)
        - client_id (optional)
        - settings (optional, block):
            - admin_password (optional)
            - admin_username (optional)
        - signing (optional, block):
            - rotation_mode (optional)
        - token (optional)
EOT

  type = map(object({
    action   = string
    base_url = string
    id       = string
    profile = optional(list(object({
      auth_scheme = string
      client_id   = optional(string)
      settings = optional(list(object({
        admin_password = optional(string)
        admin_username = optional(string)
      })))
      signing = optional(list(object({
        rotation_mode = optional(string)
      })))
      token = optional(string)
    })))
  }))
}

