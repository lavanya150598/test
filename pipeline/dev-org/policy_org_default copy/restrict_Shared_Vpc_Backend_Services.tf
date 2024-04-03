variable "iam_restrict_Shared_Vpc_Backend_Services" {
  type    = string
  default = "policies/iam.restrict_Shared_Vpc_Backend_Services"
}

variable "iam_restrict_Shared_Vpc_Backend_Services" {
  type    = list(string)
  default = []
}

variable "iam_restrict_Shared_Vpc_Backend_Services" {
  type    = list(string)
  default = []
}


module "iam_restrict_Shared_Vpc_Backend_Services" {
  source             = "../module/binary_policy"
  name               = var.iam_restrict_Shared_Vpc_Backend_Services
  scope              = "folder"
  ids                = var.iam_restrict_Shared_Vpc_Backend_Services
  enforce_policy_ind = false
  allowed_conditions = []
  denied_conditions  = []
}

module "iam_iam_restrict_shared_Vpc_Backend_Services" {
  source             = "../module/binary_policy"
  name               = var.iam_restrict_Shared_Vpc_Backend_Services
  scope              = "project"
  ids                = var.iam_restrict_Shared_Vpc_Backend_Services
  enforce_policy_ind = false
  allowed_conditions = []
  denied_conditions  = []
}
