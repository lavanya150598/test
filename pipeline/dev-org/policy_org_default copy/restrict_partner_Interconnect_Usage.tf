variable "iam_restrict_partner_Interconnect_Usage" {
  type    = string
  default = "policies/iam.restrict_partner_interconnect_networks"
}

variable "iam_restrict_partner_Interconnect_Usage" {
  type    = list(string)
  default = []
}

variable "iam_restrict_partner_Interconnect_Usage" {
  type    = list(string)
  default = []
}


module "iam_restrict_partner_Interconnect_Usage" {
  source             = "../module/binary_policy"
  name               = var.iam_restrict_partner_Interconnect_Usage
  scope              = "folder"
  ids                = var.iam_restrict_partner_Interconnect_Usage
  enforce_policy_ind = false
  allowed_conditions = []
  denied_conditions  = []
}

module "iam_restrict_partner_Interconnect_Usage" {
  source             = "../module/binary_policy"
  name               = var.iam_restrict_partner_Interconnect_Usage
  scope              = "project"
  ids                = var.iam_restrict_partner_Interconnect_Usage
  enforce_policy_ind = false
  allowed_conditions = []
  denied_conditions  = []
}
