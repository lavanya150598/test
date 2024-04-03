 variable "restrict_protocal_Forwarding_Creation_For" {
  type    = string
  default = "policies/iam.restrict_protocal_Forwarding_Creation_For"
}

variable "iam_restrict_protocal_Forwarding_Creation_For" {
  type    = list(string)
  default = []
}

variable "iam_restrict_protocal_Forwarding_Creation_For" {
  type    = list(string)
  default = []
}


module "iam_require_Vpc_Flow_Logs" {
  source             = "../module/binary_policy"
  name               = var.iam_restrict_protocal_Forwarding_Creation_For
  scope              = "folder"
  ids                = var.iam_restrict_protocal_Forwarding_Creation_For
  enforce_policy_ind = false
  allowed_conditions = []
  denied_conditions  = []
}

module "iam_restrict_protocal_forwarding_creation_For" {
  source             = "../module/binary_policy"
  name               = var.iam_restrict_protocal_forwarding_creation_For
  scope              = "project"
  ids                = var.iam_restrict_protocal_forwarding_creation_For
  enforce_policy_ind = false
  allowed_conditions = []
  denied_conditions  = []
} 
