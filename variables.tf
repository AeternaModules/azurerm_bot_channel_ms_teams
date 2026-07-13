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
  # --- Unconfirmed validation candidates, derived from azurerm_bot_channel_ms_teams's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: bot_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: calling_web_hook
  #   source:    validate.BotMSTeamsCallingWebHook: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: deployment_environment
  #   condition: contains(["CommercialDeployment", "GCCModerateDeployment"], value)
  #   message:   must be one of: CommercialDeployment, GCCModerateDeployment
}

