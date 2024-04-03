variable "iam_VM_External_IP_Access" {
  type    = string
  default = "policies/iam.iam_VM_External_IP_Access"
}

variable "iam_VM_External_IP_Access" {
  type    = list(string)
  default = []
}

variable "iam_VM_External_IP_Access" {
  type    = list(string)
  default = []
}


module "iam_VM_External_IP_Access" {
  source             = "../module/binary_policy"
  name               = var.iam_VM_External_IP_Access_name
  scope              = "folder"
  ids                = var.iam_VM_External_IP_Access_exempt_folder_list
  enforce_policy_ind = false
  allowed_conditions = []
  denied_conditions  = []
}

module "iam_VM_External_IP_Access" {
  source             = "../module/binary_policy"
  name               = var.iam_VM_External_IP_Access_name
  scope              = "project"
  ids                = var.iam_VM_External_IP_Access_list
  enforce_policy_ind = false
  allowed_conditions = []
  denied_conditions  = []
}
