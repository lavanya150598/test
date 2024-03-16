terraform {
  required_version = "1.1.7"
  backend "gcs" {
    bucket = "gcp-org-policies-tf-state"
    prefix = "terraform/policy_exception"
  }
}