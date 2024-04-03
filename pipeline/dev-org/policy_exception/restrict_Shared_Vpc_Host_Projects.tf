variable "iam_iam_restrict_shared_Vpc_Host_Projects" {
  type    = string
  default = "policies/iam.restrict_Shared_Vpc_Host_Projects"
}

variable "iam_iam_restrict_shared_Vpc_Host_Projects" {
  type    = string
  default = "organization"
}

variable "iam_iam_restrict_shared_Vpc_Host_Projects" {
  type    = list(string)
  default = ["359229047143"]
}

variable "iam_iam_restrict_shared_Vpc_Host_Projects" {
  type    = list(string)
  default = []
}

variable "iam_iam_restrict_shared_Vpc_Host_Projects" {
  type    = list(string)
  default = []
}

variable "iam_restrict_shared_Vpc_Host_Projects" {
  type = list(object({
    condition = object({
      description = string
      expression  = string
      title       = string
    })
    values = object({
      allowed_values = list(string)
      denied_values  = list(string)
    })
  }))
  default = []
}

variable "iam_restrict_shared_Vpc_Host_projects" {
  type = list(object({
    condition = object({
      description = string
      expression  = string
      title       = string
    })
    values = object({
      allowed_values = list(string)
      denied_values  = list(string)
    })
  }))
  default = []
}

module "iam_restrict_Shared_Vpc_Host_Projects" {
  source             = "../module/list_policy"
  name               = var.iam_restrict_Shared_Vpc_Host_Projects
  scope              = var.iam_restrict_Shared_Vpc_Host_Projects
  ids                = var.iam_restrict_shared_Vpc_Host_projects == "organization" ? [var.organization_id] : var.iam_allowedPolicyMemberDomains_ids
  allowed_values     = var.iam_restrict_Shared_Vpc_Host_Projects_allowed_values
  denied_values      = var.iam_restrict_Shared_Vpc_Host_Projects_denied_values
  allowed_conditions = var.iam_restrict_Shared_Vpc_Host_Projects_allowed_conditions
  denied_conditions  = var.iam_restrict_Shared_Vpc_Host_Projects_denied_conditions
}

