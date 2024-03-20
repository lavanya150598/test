terraform {
  required_version = "1.5.0"
  backend "gcs" {
    bucket = "gcp-org-policies-tf-state"
    prefix = "terraform/policy_exception"
  }
}