output "bot_channel_ms_teamses_id" {
  description = "Map of id values across all bot_channel_ms_teamses, keyed the same as var.bot_channel_ms_teamses"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teamses : k => v.id }
}
output "bot_channel_ms_teamses_bot_name" {
  description = "Map of bot_name values across all bot_channel_ms_teamses, keyed the same as var.bot_channel_ms_teamses"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teamses : k => v.bot_name }
}
output "bot_channel_ms_teamses_calling_enabled" {
  description = "Map of calling_enabled values across all bot_channel_ms_teamses, keyed the same as var.bot_channel_ms_teamses"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teamses : k => v.calling_enabled }
}
output "bot_channel_ms_teamses_calling_web_hook" {
  description = "Map of calling_web_hook values across all bot_channel_ms_teamses, keyed the same as var.bot_channel_ms_teamses"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teamses : k => v.calling_web_hook }
}
output "bot_channel_ms_teamses_deployment_environment" {
  description = "Map of deployment_environment values across all bot_channel_ms_teamses, keyed the same as var.bot_channel_ms_teamses"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teamses : k => v.deployment_environment }
}
output "bot_channel_ms_teamses_enable_calling" {
  description = "Map of enable_calling values across all bot_channel_ms_teamses, keyed the same as var.bot_channel_ms_teamses"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teamses : k => v.enable_calling }
}
output "bot_channel_ms_teamses_location" {
  description = "Map of location values across all bot_channel_ms_teamses, keyed the same as var.bot_channel_ms_teamses"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teamses : k => v.location }
}
output "bot_channel_ms_teamses_resource_group_name" {
  description = "Map of resource_group_name values across all bot_channel_ms_teamses, keyed the same as var.bot_channel_ms_teamses"
  value       = { for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teamses : k => v.resource_group_name }
}

