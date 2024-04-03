variable "iam_VM_Can_IP_Forward" {
  type    = string
  default = "policies/iam.VM_Can_Ip_Forward"
}

variable "iam_VM_Can_IP_Forward" {
  type    = list(string)
  default = []
}

variable "iam_VM_Can_IP_Forward" {
  type    = list(string)
  default = []
}


module "iam_VM_Can_IP_Forward" {
  source             = "../module/binary_policy"
  name               = var.iam_VM_Can_Ip_Forward_name
  scope              = "folder"
  ids                = var.iam_VM_Can_IP_Forward_exempt_folder_list
  enforce_policy_ind = false
  allowed_conditions = []
  denied_conditions  = []
}

module "iam_VM_Can_IP_Forward_project" {
  source             = "../module/binary_policy"
  name               = var.iam_VM_Can_IP_Forward_name
  scope              = "project"
  ids                = var.iam_VM_Can_IP_Forward_list
  enforce_policy_ind = false
  allowed_conditions = []
  denied_conditions  = []
}
