terraform {
  required_version = "1.7.5"
  backend "gcs" {
    bucket = "gcp-org-policies-tf-state"
    prefix = "terraform/policy_org_default"
  }
}