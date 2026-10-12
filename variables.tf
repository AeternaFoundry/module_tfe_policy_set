variable "policy_sets" {
  description = <<EOT
Map of policy_sets, attributes below
Required:
    - name
Optional:
    - agent_enabled
    - description
    - global
    - kind
    - organization
    - overridable
    - policies_path
    - policy_ids
    - policy_tool_version
    - policy_update_patterns
    - slug
    - workspace_ids
    - vcs_repo (block):
        - branch (optional)
        - github_app_installation_id (optional)
        - identifier (required)
        - ingress_submodules (optional)
        - oauth_token_id (optional)
EOT

  type = map(object({
    name                   = string
    agent_enabled          = optional(bool)
    description            = optional(string)
    global                 = optional(bool)
    kind                   = optional(string)
    organization           = optional(string)
    overridable            = optional(bool)
    policies_path          = optional(string)
    policy_ids             = optional(set(string))
    policy_tool_version    = optional(string)
    policy_update_patterns = optional(list(string))
    slug                   = optional(map(string))
    workspace_ids          = optional(set(string))
    vcs_repo = optional(object({
      branch                     = optional(string)
      github_app_installation_id = optional(string)
      identifier                 = string
      ingress_submodules         = optional(bool)
      oauth_token_id             = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.policy_sets : (
        can(regex("\\A[\\w\\_\\-]+\\z", v.name))
      )
    ])
    error_message = "can only include letters, numbers, -, and _."
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

