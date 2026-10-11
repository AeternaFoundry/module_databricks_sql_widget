resource "databricks_sql_widget" "sql_widgets" {
  for_each = var.sql_widgets

  dashboard_id     = each.value.dashboard_id
  description      = each.value.description
  text             = each.value.text
  title            = each.value.title
  visualization_id = each.value.visualization_id
  widget_id        = each.value.widget_id

  dynamic "parameter" {
    for_each = each.value.parameter != null ? each.value.parameter : []
    content {
      map_to = parameter.value.map_to
      name   = parameter.value.name
      title  = parameter.value.title
      type   = parameter.value.type
      value  = parameter.value.value
      values = parameter.value.values
    }
  }

  dynamic "position" {
    for_each = each.value.position != null ? [each.value.position] : []
    content {
      auto_height = position.value.auto_height
      pos_x       = position.value.pos_x
      pos_y       = position.value.pos_y
      size_x      = position.value.size_x
      size_y      = position.value.size_y
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

