locals {
  arn_sns_all                  = var.arn_sns_all[terraform.workspace]
  arn_identity_provider        = var.arn_identity_provider[terraform.workspace]
  string_identity_provider_aud = var.string_identity_provider_aud[terraform.workspace]
  string_identity_provider_sub = var.string_identity_provider_sub[terraform.workspace]
}