variable "tfe_admin_token" {
  // admin user individual token
  type      = string
  default   = "TQPZLxNBKMlyaA.atlasv1.9smxOy1pF2pPYFLT2ORsxMzqVh66z2ycQiZzx3rkCsUsVLNZrkdeLzrVwYNGBz1kO7M"
  sensative = true
}
variable "tfe_token" {
  type      = string
  sensitive = true
}
