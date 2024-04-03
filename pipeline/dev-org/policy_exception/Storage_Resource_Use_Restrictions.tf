variable "storage_Resource_Use_Restrictions" {
  type    = string
  default = "policies/iam.storage_Resource_Use_Restrictions"
}

variable "iam_storage_Resource_Use_Restrictions_allowed_conditions" {
  type = list(object({
    condition = object({
      description = string
      expression  = string
      title       = string
    })
  }))
  default = []
}

variable "iam_storage_Resource_Use_Restrictions_denied_conditions" {
  type = list(object({
    condition = object({
      description = string
      expression  = string
      title       = string
    })
  }))
  default = []
}

module "storage_Resource_Use_Restrictions" {
  source             = "../module/binary_policy"
  name               = var.storage_Resource_Use_Restrictions
  scope              = "organization"
  ids                = [var.organization_id]
  enforce_policy_ind = true
  allowed_conditions = storage_Resource_Use_Restrictions_allowed_conditions
  denied_conditions  = storage_Resource_Use_Restrictions_allowed_conditions_denied_conditions
}