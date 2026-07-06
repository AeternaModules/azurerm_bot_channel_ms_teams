output "bot_channel_ms_teamses" {
  description = "All bot_channel_ms_teams resources"
  value       = azurerm_bot_channel_ms_teams.bot_channel_ms_teamses
}
output "bot_channel_ms_teamses_bot_name" {
  description = "List of bot_name values across all bot_channel_ms_teamses"
  value       = [for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teamses : v.bot_name]
}
output "bot_channel_ms_teamses_calling_enabled" {
  description = "List of calling_enabled values across all bot_channel_ms_teamses"
  value       = [for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teamses : v.calling_enabled]
}
output "bot_channel_ms_teamses_calling_web_hook" {
  description = "List of calling_web_hook values across all bot_channel_ms_teamses"
  value       = [for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teamses : v.calling_web_hook]
}
output "bot_channel_ms_teamses_deployment_environment" {
  description = "List of deployment_environment values across all bot_channel_ms_teamses"
  value       = [for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teamses : v.deployment_environment]
}
output "bot_channel_ms_teamses_enable_calling" {
  description = "List of enable_calling values across all bot_channel_ms_teamses"
  value       = [for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teamses : v.enable_calling]
}
output "bot_channel_ms_teamses_location" {
  description = "List of location values across all bot_channel_ms_teamses"
  value       = [for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teamses : v.location]
}
output "bot_channel_ms_teamses_resource_group_name" {
  description = "List of resource_group_name values across all bot_channel_ms_teamses"
  value       = [for k, v in azurerm_bot_channel_ms_teams.bot_channel_ms_teamses : v.resource_group_name]
}

