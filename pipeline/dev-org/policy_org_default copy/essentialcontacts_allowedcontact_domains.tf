variable "essentialcontacts_allowedContact_Domains" {
  type    = string
  default = "cloudresourcemanager.googleapis.com"
}

variable "essentialcontacts_allowedContact_Domains" {
  type    = string
  default = "folder"
}

variable "essentialcontacts_allowedContact_Domains" {
  type = list(string)
}

variable "essentialcontacts_allowedContact_Domains" {
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

module "iam_denyPolicy_iam" {
  source     = "../module/deny_policy"
  policy_id  = "iam-denyPolicy-iam"
  name       = var.iam_denyPolicy_iam_name
  scope      = var.iam_denyPolicy_iam_scope
  ids        = var.iam_denyPolicy_iam_ids
  deny_rules = var.iam_denyPolicy_iam_rules
}

