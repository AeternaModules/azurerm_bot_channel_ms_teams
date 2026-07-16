output "bot_channel_ms_teams_id" {
  description = "Map of id values across all bot_channel_ms_teams, keyed the same as var.bot_channel_ms_teams"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teams : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bot_channel_ms_teams_bot_name" {
  description = "Map of bot_name values across all bot_channel_ms_teams, keyed the same as var.bot_channel_ms_teams"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teams : k => v.bot_name if v.bot_name != null && length(v.bot_name) > 0 }
}
output "bot_channel_ms_teams_calling_enabled" {
  description = "Map of calling_enabled values across all bot_channel_ms_teams, keyed the same as var.bot_channel_ms_teams"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teams : k => v.calling_enabled if v.calling_enabled != null }
}
output "bot_channel_ms_teams_calling_web_hook" {
  description = "Map of calling_web_hook values across all bot_channel_ms_teams, keyed the same as var.bot_channel_ms_teams"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teams : k => v.calling_web_hook if v.calling_web_hook != null && length(v.calling_web_hook) > 0 }
}
output "bot_channel_ms_teams_deployment_environment" {
  description = "Map of deployment_environment values across all bot_channel_ms_teams, keyed the same as var.bot_channel_ms_teams"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teams : k => v.deployment_environment if v.deployment_environment != null && length(v.deployment_environment) > 0 }
}
output "bot_channel_ms_teams_enable_calling" {
  description = "Map of enable_calling values across all bot_channel_ms_teams, keyed the same as var.bot_channel_ms_teams"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teams : k => v.enable_calling if v.enable_calling != null }
}
output "bot_channel_ms_teams_location" {
  description = "Map of location values across all bot_channel_ms_teams, keyed the same as var.bot_channel_ms_teams"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teams : k => v.location if v.location != null && length(v.location) > 0 }
}
output "bot_channel_ms_teams_resource_group_name" {
  description = "Map of resource_group_name values across all bot_channel_ms_teams, keyed the same as var.bot_channel_ms_teams"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teams : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}

