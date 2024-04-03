variable "disable_GlobalSerial_Port_Access" {
  type    = string
  default = "policies/iam.disable_GlobalSerial_Port_Access"
}

variable "disable_GlobalSerial_Port_Access" {
  type    = string
  default = "organization"
}

variable "disable_GlobalSerial_Port_Access" {
  type    = list(string)
  default = ["359229047143"]
}

variable "iam_disable_GlobalSerial_port_Access" {
  type    = list(string)
  default = []
}

variable "disable_GlobalSerial_Port_Access" {
  type    = list(string)
  default = []
}

variable "disable_GlobalSerial_Port_Access" {
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

variable "iam_disable_GlobalSerial_port_Access" {
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

module "iam_disable_GlobalSerial_port_Access" {
  source             = "../module/list_policy"
  name               = var.disable_GlobalSerial_Port
  scope              = var.disable_GlobalSerial_Port
  ids                = var.disable_GlobalSerial_Port_scope == "organization" ? [var.organization_id] : var.iam_allowedPolicyMemberDomains_ids
  allowed_values     = var.disable_GlobalSerial_Port_allowed_values
  denied_values      = var.disable_GlobalSerial_Port_denied_values
  allowed_conditions = var.disable_GlobalSerial_Port_Access_allowed_conditions
  denied_conditions  = var.disable_GlobalSerial_Port_denied_conditions
}

