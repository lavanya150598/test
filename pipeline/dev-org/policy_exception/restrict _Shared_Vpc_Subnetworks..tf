variable "iam_restrict_shared_vpc_Subnetworks" {
  type    = string
  default = "policies/iam.iam_restrict_shared_vpc_Subnetworks"
}

variable "iam_restrict_shared_vpc_Subnetworks" {
  type    = list(string)
  default = []
}

variable "iam_restrict_shared_vpc_Subnetworks" {
  type    = list(string)
  default = []
}


module "iam_restrict_shared_vpc_Subnetworks" {
  source             = "../module/binary_policy"
  name               = var.iam_restrict_shared_vpc_Subnetworks
  scope              = "folder"
  ids                = var.iam_iam_restrict_shared_Vpc_Subnetworks
  enforce_policy_ind = false
  allowed_conditions = []
  denied_conditions  = []
}

module "iam_restrict_shared_vpc_Subnetworks" {
  source             = "../module/binary_policy"
  name               = var.iam_restrict_shared_vpc_Subnetworks
  scope              = "project"
  ids                = var.iam_restrict_shared_vpc_Subnetworks
  enforce_policy_ind = false
  allowed_conditions = []
  denied_conditions  = []
}

