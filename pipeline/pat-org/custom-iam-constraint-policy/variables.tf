variable "project_id" {
  default = "secctrl-test-dev-01"
}

variable "organization_id" {
  default = "359229047143"
}

variable "iam_deny_constraint" {
  type = map(object({
    name         = string
    display_name = string
    description  = string
    denied_roles = list(string)
  }))
}
