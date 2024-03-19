terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">=3.0.0"

    }
    google = {
      source  = "hashicorp/google"
      version = "5.20.0"

    }
  }
}
