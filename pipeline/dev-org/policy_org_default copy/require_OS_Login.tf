variable "require_OS_Login" {
  type    = string
  default = "policies/iam.require_OS_Login"
}

variable "require_OS_Login" {
  type    = string
  default = "organization"
}

variable "require_OS_Login" {
  type    = list(string)
  default = ["359229047143"]
}

variable "require_OS_Login" {
  type    = list(string)
  default = []
}

variable "require_OS_Login" {
  type    = list(string)
  default = []
}

variable "require_OS_Login" {
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

variable "iam_require_OS_Login" {
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

module "iam_require_OS_Login" {
  source             = "../module/list_policy"
  name               = var.disable_GlobalSerial_Port
  scope              = var.disable_GlobalSerial_Port
  ids                = var.require_OS_Login_scope == "organization" ? [var.organization_id] : var.iam_allowedPolicyMemberDomains_ids
  allowed_values     = var.require_OS_Login_Port_allowed_values
  denied_values      = var.require_OS_Login_Port_denied_values
  allowed_conditions = var.require_OS_Login_Port_Access_allowed_conditions
  denied_conditions  = var.require_OS_Login_Port_denied_conditions
}
 
