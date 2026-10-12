resource "tfe_policy_set" "policy_sets" {
  for_each = var.policy_sets

  name                   = each.value.name
  agent_enabled          = each.value.agent_enabled
  description            = each.value.description
  global                 = each.value.global
  kind                   = each.value.kind
  organization           = each.value.organization
  overridable            = each.value.overridable
  policies_path          = each.value.policies_path
  policy_ids             = each.value.policy_ids
  policy_tool_version    = each.value.policy_tool_version
  policy_update_patterns = each.value.policy_update_patterns
  slug                   = each.value.slug
  workspace_ids          = each.value.workspace_ids

  dynamic "vcs_repo" {
    for_each = each.value.vcs_repo != null ? [each.value.vcs_repo] : []
    content {
      branch                     = vcs_repo.value.branch
      github_app_installation_id = vcs_repo.value.github_app_installation_id
      identifier                 = vcs_repo.value.identifier
      ingress_submodules         = vcs_repo.value.ingress_submodules
      oauth_token_id             = vcs_repo.value.oauth_token_id
    }
  }
}

