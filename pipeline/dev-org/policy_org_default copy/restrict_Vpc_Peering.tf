variable "iam_restrict_shared_vpc_peering" {
  type    = string
  default = "policies/iam.iam_restrict_shared_vpc_peering"
}

variable "iam_restrict_shared_vpc_peering" {
  type    = list(string)
  default = []
}

variable "iam_restrict_shared_vpc_peering" {
  type    = list(string)
  default = []
}


module "iam_restrict_shared_vpc_peering" {
  source             = "../module/binary_policy"
  name               = var.iam_restrict_shared_vpc_peering
  scope              = "folder"
  ids                = var.iam_restrict_shared_vpc_peering
  enforce_policy_ind = false
  allowed_conditions = []
  denied_conditions  = []
}

module "iam_iam_restrict_shared_Vpc_Backend_Services" {
  source             = "../module/binary_policy"
  name               = var.iam_restrict_Shared_Vpc_Backend_Services
  scope              = "project"
  ids                = var.iam_restrict_shared_vpc_peering
  enforce_policy_ind = false
  allowed_conditions = []
  denied_conditions  = []
}
  