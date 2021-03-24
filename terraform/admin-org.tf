resource "tfe_organization" "admin" {
  provider = tfe.tfe_admin
  name     = "example-admin-org"
  email    = "admin@company.com"
}
resource "tfe_workspace" "test" {
  provider     = tfe.tfe_admin
  name         = "my-workspace-name"
  organization = tfe_organization.admin.id
}
