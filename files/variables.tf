variable "arn_sns_all" {
  description = ""
  type        = map(string)
  default = {
    develop = "arn:aws:sns:sa-east-1:ABC:*"
    qa      = "arn:aws:sns:sa-east-1:CDE:*"
    main    = "arn:aws:sns:sa-east-1:FGH:*"
  }
}
variable "create_dlq" {
  description = "Determines whether to create SQS dead letter queue"
  type        = bool
  default     = true
}
variable "sqs_test" {
  description = ""
  type        = string
  default     = "test"
}
variable "sqs_test_dlq" {
  description = ""
  type        = string
  default     = "test_dlq"
}
variable "sns_test" {
  description = ""
  type        = string
  default     = "test"
}
variable "policy_test" {
  description = ""
  type        = string
  default     = "test_dlq"
}
variable "role_test" {
  description = ""
  type        = string
  default     = "test"
}
variable "arn_identity_provider" {
  description = ""
  type        = map(string)
  default = {
    develop = "arn:aws:sns:sa-east-1:ABC:*"
    qa      = "arn:aws:sns:sa-east-1:CDE:*"
    main    = "arn:aws:sns:sa-east-1:FGH:*"
  }
}
variable "string_identity_provider_aud" {
  description = ""
  type        = map(string)
  default = {
    develop = "arn:aws:sns:sa-east-1:ABC:*"
    qa      = "arn:aws:sns:sa-east-1:CDE:*"
    main    = "arn:aws:sns:sa-east-1:FGH:*"
  }
}
variable "string_identity_provider_sub" {
  description = ""
  type        = map(string)
  default = {
    develop = "arn:aws:sns:sa-east-1:ABC:*"
    qa      = "arn:aws:sns:sa-east-1:CDE:*"
    main    = "arn:aws:sns:sa-east-1:FGH:*"
  }
}

variable "arn_identity_provider" {
  type = map(string)
  default = {
    develop = "arn:aws:iam::ABC:oidc-provider/oidc.eks.sa-east-1.amazonaws.com/id/ABC"
    qa      = "arn:aws:iam::DEF:oidc-provider/oidc.eks.sa-east-1.amazonaws.com/id/DEF"
    main    = "arn:aws:iam::GHI:oidc-provider/oidc.eks.sa-east-1.amazonaws.com/id/GHI"
  }
}
variable "string_identity_provider_aud" {
  type = map(string)
  default = {
    develop = "oidc.eks.sa-east-1.amazonaws.com/id/ABC:aud"
    qa      = "oidc.eks.sa-east-1.amazonaws.com/id/DEF:aud"
    main    = "oidc.eks.sa-east-1.amazonaws.com/id/GHI:aud"
  }
}
variable "string_identity_provider_sub" {
  type = map(string)
  default = {
    develop = "oidc.eks.sa-east-1.amazonaws.com/id/ABC:sub"
    qa      = "oidc.eks.sa-east-1.amazonaws.com/id/DEF:sub"
    main    = "oidc.eks.sa-east-1.amazonaws.com/id/GHI:sub"
  }
}