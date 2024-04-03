variable "detailed_Audit_Logging_Mode" {
  type    = string
  default = "cloudresourcemanager.googleapis.com"
}

variable "detailed_Audit_Logging_Mode_scope" {
  type    = string
  default = "folder"
}

variable "detailed_Audit_Logging_Mode_ids" {
  type = list(string)
}

variable "detailed_Audit_Logging_Mode_rules" {
  type = list(object({
    rule = object({
      description                 = string
      denied_principals           = list(string)
      denied_permissions          = list(string)
      exception_principals        = list(string)
      denied_condition_expression = string
    })
  }))
  default = []
}

module "detailed_Audit_Logging_Mode" {
  source     = "../module/Audit_policy"
  policy_id  = "iam-AuditPolicy-iam"
  name       = var.detailed_Audit_Logging_Mode_iam_name
  scope      = var.detailed_Audit_Logging_Mode_scope
  ids        = var.detailed_Audit_Logging_Mode_ids
  Audit_rules = var.detailed_Audit_Logging_Mode_rules
}

