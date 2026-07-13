variable "bot_channel_ms_teams" {
  description = <<EOT
Map of bot_channel_ms_teams, attributes below
Required:
    - bot_name
    - location
    - resource_group_name
Optional:
    - calling_enabled
    - calling_web_hook
    - deployment_environment
    - enable_calling
EOT

  type = map(object({
    bot_name               = string
    location               = string
    resource_group_name    = string
    calling_enabled        = optional(bool)
    calling_web_hook       = optional(string)
    deployment_environment = optional(string)
    enable_calling         = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_ms_teams : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_ms_teams : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_ms_teams : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_ms_teams : (
        length(v.bot_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_ms_teams : (
        v.deployment_environment == null || (contains(["CommercialDeployment", "GCCModerateDeployment"], v.deployment_environment))
      )
    ])
    error_message = "must be one of: CommercialDeployment, GCCModerateDeployment"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

