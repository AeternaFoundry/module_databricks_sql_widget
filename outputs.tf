output "sql_widgets_id" {
  description = "Map of id values across all sql_widgets, keyed the same as var.sql_widgets except keys with no id are omitted"
  value       = { for k, v in databricks_sql_widget.sql_widgets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sql_widgets_dashboard_id" {
  description = "Map of dashboard_id values across all sql_widgets, keyed the same as var.sql_widgets except keys with no dashboard_id are omitted"
  value       = { for k, v in databricks_sql_widget.sql_widgets : k => v.dashboard_id if v.dashboard_id != null && length(v.dashboard_id) > 0 }
}
output "sql_widgets_description" {
  description = "Map of description values across all sql_widgets, keyed the same as var.sql_widgets except keys with no description are omitted"
  value       = { for k, v in databricks_sql_widget.sql_widgets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "sql_widgets_parameter" {
  description = "Map of parameter values across all sql_widgets, keyed the same as var.sql_widgets except keys with no parameter are omitted"
  value       = { for k, v in databricks_sql_widget.sql_widgets : k => v.parameter if v.parameter != null && length(v.parameter) > 0 }
}
output "sql_widgets_position" {
  description = "Map of position values across all sql_widgets, keyed the same as var.sql_widgets except keys with no position are omitted"
  value       = { for k, v in databricks_sql_widget.sql_widgets : k => one(v.position) if v.position != null && length(v.position) > 0 }
}
output "sql_widgets_provider_config" {
  description = "Map of provider_config values across all sql_widgets, keyed the same as var.sql_widgets except keys with no provider_config are omitted"
  value       = { for k, v in databricks_sql_widget.sql_widgets : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "sql_widgets_text" {
  description = "Map of text values across all sql_widgets, keyed the same as var.sql_widgets except keys with no text are omitted"
  value       = { for k, v in databricks_sql_widget.sql_widgets : k => v.text if v.text != null && length(v.text) > 0 }
}
output "sql_widgets_title" {
  description = "Map of title values across all sql_widgets, keyed the same as var.sql_widgets except keys with no title are omitted"
  value       = { for k, v in databricks_sql_widget.sql_widgets : k => v.title if v.title != null && length(v.title) > 0 }
}
output "sql_widgets_visualization_id" {
  description = "Map of visualization_id values across all sql_widgets, keyed the same as var.sql_widgets except keys with no visualization_id are omitted"
  value       = { for k, v in databricks_sql_widget.sql_widgets : k => v.visualization_id if v.visualization_id != null && length(v.visualization_id) > 0 }
}
output "sql_widgets_widget_id" {
  description = "Map of widget_id values across all sql_widgets, keyed the same as var.sql_widgets except keys with no widget_id are omitted"
  value       = { for k, v in databricks_sql_widget.sql_widgets : k => v.widget_id if v.widget_id != null && length(v.widget_id) > 0 }
}

