variable "require_Vpc_Flow_Logs" {
  type    = string
  default = "policies/iam.require_Vpc_Flow_Logs"
}

variable "iam_require_Vpc_Flow_Logs" {
  type    = list(string)
  default = []
}

variable "iam_require_Vpc_Flow_Logs" {
  type    = list(string)
  default = []
}


module "iam_require_Vpc_Flow_Logs" {
  source             = "../module/binary_policy"
  name               = var.iam_require_Vpc_Flow_Logs
  scope              = "folder"
  ids                = var.iam_require_Vpc_Flow_Logs
  enforce_policy_ind = false
  allowed_conditions = []
  denied_conditions  = []
}

module "iam_require_Vpc_Flow_Logs" {
  source             = "../module/binary_policy"
  name               = var.iam_require_Vpc_Flow_Logs
  scope              = "project"
  ids                = var.iam_require_Vpc_Flow_Logs
  enforce_policy_ind = false
  allowed_conditions = []
  denied_conditions  = []
}
