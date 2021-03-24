resource "tfe_organization" "example" {
  collaborator_auth_policy = "password"
  cost_estimation_enabled  = true
  email                    = "admin@example.com"
  name                     = "example"
}
resource "tfe_workspace" "example-workspace" {
  // commented out RO config
  allow_destroy_plan = true
  auto_apply         = false
  execution_mode     = "remote"
  //  external_id           = "ws-ZYaqBHFT4JPpEzSP"
  file_triggers_enabled = false
  //    id                    = "ws-ZYaqBHFT4JPpEzSP"
  name = "example-workspace"
  //  operations            = true
  organization        = tfe_organization.example.id
  queue_all_runs      = false
  speculative_enabled = true
  terraform_version   = "0.14.7"
  trigger_prefixes    = []
}
