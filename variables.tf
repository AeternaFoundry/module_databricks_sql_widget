variable "sql_widgets" {
  description = <<EOT
Map of sql_widgets, attributes below
Required:
    - dashboard_id
Optional:
    - description
    - text
    - title
    - visualization_id
    - widget_id
    - parameter (block):
        - map_to (optional)
        - name (required)
        - title (optional)
        - type (required)
        - value (optional)
        - values (optional)
    - position (block):
        - auto_height (optional)
        - pos_x (optional)
        - pos_y (optional)
        - size_x (required)
        - size_y (required)
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    dashboard_id     = string
    description      = optional(string)
    text             = optional(string)
    title            = optional(string)
    visualization_id = optional(string)
    widget_id        = optional(string)
    parameter = optional(list(object({
      map_to = optional(string)
      name   = string
      title  = optional(string)
      type   = string
      value  = optional(string)
      values = optional(list(string))
    })))
    position = optional(object({
      auto_height = optional(bool)
      pos_x       = optional(number)
      pos_y       = optional(number)
      size_x      = number
      size_y      = number
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

