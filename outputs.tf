output "policy_sets_id" {
  description = "Map of id values across all policy_sets, keyed the same as var.policy_sets except keys with no id are omitted"
  value       = { for k, v in tfe_policy_set.policy_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "policy_sets_agent_enabled" {
  description = "Map of agent_enabled values across all policy_sets, keyed the same as var.policy_sets except keys with no agent_enabled are omitted"
  value       = { for k, v in tfe_policy_set.policy_sets : k => v.agent_enabled if v.agent_enabled != null }
}
output "policy_sets_description" {
  description = "Map of description values across all policy_sets, keyed the same as var.policy_sets except keys with no description are omitted"
  value       = { for k, v in tfe_policy_set.policy_sets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "policy_sets_global" {
  description = "Map of global values across all policy_sets, keyed the same as var.policy_sets except keys with no global are omitted"
  value       = { for k, v in tfe_policy_set.policy_sets : k => v.global if v.global != null }
}
output "policy_sets_kind" {
  description = "Map of kind values across all policy_sets, keyed the same as var.policy_sets except keys with no kind are omitted"
  value       = { for k, v in tfe_policy_set.policy_sets : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "policy_sets_name" {
  description = "Map of name values across all policy_sets, keyed the same as var.policy_sets except keys with no name are omitted"
  value       = { for k, v in tfe_policy_set.policy_sets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "policy_sets_organization" {
  description = "Map of organization values across all policy_sets, keyed the same as var.policy_sets except keys with no organization are omitted"
  value       = { for k, v in tfe_policy_set.policy_sets : k => v.organization if v.organization != null && length(v.organization) > 0 }
}
output "policy_sets_overridable" {
  description = "Map of overridable values across all policy_sets, keyed the same as var.policy_sets except keys with no overridable are omitted"
  value       = { for k, v in tfe_policy_set.policy_sets : k => v.overridable if v.overridable != null }
}
output "policy_sets_policies_path" {
  description = "Map of policies_path values across all policy_sets, keyed the same as var.policy_sets except keys with no policies_path are omitted"
  value       = { for k, v in tfe_policy_set.policy_sets : k => v.policies_path if v.policies_path != null && length(v.policies_path) > 0 }
}
output "policy_sets_policy_ids" {
  description = "Map of policy_ids values across all policy_sets, keyed the same as var.policy_sets except keys with no policy_ids are omitted"
  value       = { for k, v in tfe_policy_set.policy_sets : k => v.policy_ids if v.policy_ids != null && length(v.policy_ids) > 0 }
}
output "policy_sets_policy_tool_version" {
  description = "Map of policy_tool_version values across all policy_sets, keyed the same as var.policy_sets except keys with no policy_tool_version are omitted"
  value       = { for k, v in tfe_policy_set.policy_sets : k => v.policy_tool_version if v.policy_tool_version != null && length(v.policy_tool_version) > 0 }
}
output "policy_sets_policy_update_patterns" {
  description = "Map of policy_update_patterns values across all policy_sets, keyed the same as var.policy_sets except keys with no policy_update_patterns are omitted"
  value       = { for k, v in tfe_policy_set.policy_sets : k => v.policy_update_patterns if v.policy_update_patterns != null && length(v.policy_update_patterns) > 0 }
}
output "policy_sets_slug" {
  description = "Map of slug values across all policy_sets, keyed the same as var.policy_sets except keys with no slug are omitted"
  value       = { for k, v in tfe_policy_set.policy_sets : k => v.slug if v.slug != null && length(v.slug) > 0 }
}
output "policy_sets_vcs_repo" {
  description = "Map of vcs_repo values across all policy_sets, keyed the same as var.policy_sets except keys with no vcs_repo are omitted"
  value       = { for k, v in tfe_policy_set.policy_sets : k => one(v.vcs_repo) if v.vcs_repo != null && length(v.vcs_repo) > 0 }
}
output "policy_sets_workspace_ids" {
  description = "Map of workspace_ids values across all policy_sets, keyed the same as var.policy_sets except keys with no workspace_ids are omitted"
  value       = { for k, v in tfe_policy_set.policy_sets : k => v.workspace_ids if v.workspace_ids != null && length(v.workspace_ids) > 0 }
}

