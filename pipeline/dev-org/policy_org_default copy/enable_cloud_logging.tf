variable "enable_cloud_logging" {
  type    = string
  default = "policies/iam.enable_cloud_logging"
}

variable "iam_enable_cloud_logging_allowed_conditions" {
  type = list(object({
    condition = object({
      description = string
      expression  = string
      title       = string
    })
  }))
  default = []
}

variable "iam_enable_cloud_logging_denied_conditions" {
  type = list(object({
    condition = object({
      description = string
      expression  = string
      title       = string
    })
  }))
  default = []
}

module "enable_cloud_logging" {
  source             = "../module/binary_policy"
  name               = var.enable_cloud_logging
  scope              = "organization"
  ids                = [var.organization_id]
  enforce_policy_ind = true
  allowed_conditions = enable_cloud_logging_allowed_conditions
  denied_conditions  = enable_cloud_logging_denied_conditions
}