terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.24.0"
    }
  }
  backend "local" {
  }
  // you can't do this it as to be explicit strings
  // backend "remote" {
  //   organization = tfe_organization.admin.name

  //   workspaces {
  //     name = tfe_workspace.test.name
  //   }
  // }
}
provider "tfe" {
  // to create an org you need admin level credentials
  alias           = "tfe_admin"
  hostname        = "localhost"
  ssl_skip_verify = true
  // don't commit tokens to VCS (this token is ephemeral so I don't care for this example branch)
  //token           = "TQPZLxNBKMlyaA.atlasv1.9smxOy1pF2pPYFLT2ORsxMzqVh66z2ycQiZzx3rkCsUsVLNZrkdeLzrVwYNGBz1kO7M"
  token = var.tfe_admin_token
}
provider "tfe" {
  hostname        = "localhost"
  ssl_skip_verify = true
  // don't commit tokens to VCS (this token is ephemeral so I don't care for this example branch)
  //token = "biNPdXJ0MjeviA.atlasv1.zXmSPICB4Yu99TsidebSzlkZBMrzFkLZ0Vpwa1LxeAeKpmzC5jjKPhy7mAFLbzO6ft8"
  token = var.tfe_token
}
