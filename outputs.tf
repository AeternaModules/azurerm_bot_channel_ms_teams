output "bot_channel_ms_teams_id" {
  description = "Map of id values across all bot_channel_ms_teams, keyed the same as var.bot_channel_ms_teams"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teams : k => v.id }
}
output "bot_channel_ms_teams_bot_name" {
  description = "Map of bot_name values across all bot_channel_ms_teams, keyed the same as var.bot_channel_ms_teams"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teams : k => v.bot_name }
}
output "bot_channel_ms_teams_calling_enabled" {
  description = "Map of calling_enabled values across all bot_channel_ms_teams, keyed the same as var.bot_channel_ms_teams"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teams : k => v.calling_enabled }
}
output "bot_channel_ms_teams_calling_web_hook" {
  description = "Map of calling_web_hook values across all bot_channel_ms_teams, keyed the same as var.bot_channel_ms_teams"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teams : k => v.calling_web_hook }
}
output "bot_channel_ms_teams_deployment_environment" {
  description = "Map of deployment_environment values across all bot_channel_ms_teams, keyed the same as var.bot_channel_ms_teams"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teams : k => v.deployment_environment }
}
output "bot_channel_ms_teams_enable_calling" {
  description = "Map of enable_calling values across all bot_channel_ms_teams, keyed the same as var.bot_channel_ms_teams"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teams : k => v.enable_calling }
}
output "bot_channel_ms_teams_location" {
  description = "Map of location values across all bot_channel_ms_teams, keyed the same as var.bot_channel_ms_teams"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teams : k => v.location }
}
output "bot_channel_ms_teams_resource_group_name" {
  description = "Map of resource_group_name values across all bot_channel_ms_teams, keyed the same as var.bot_channel_ms_teams"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teams : k => v.resource_group_name }
}

