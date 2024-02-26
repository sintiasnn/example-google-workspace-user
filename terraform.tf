provider "google" {
  project     = "gworkspace"
  region      = "asia-southeast2"
  credentials = "/path_to_your_service_account"
}

provider "googleworkspace" {
  credentials = "/path_to_your_service_account"
  customer_id = "your_customer_id"
  oauth_scopes = [
    "https://www.googleapis.com/auth/admin.directory.user",
    "https://www.googleapis.com/auth/admin.directory.group",
    "https://www.googleapis.com/auth/admin.directory.userschema",
    "https://www.googleapis.com/auth/admin.directory.rolemanagement",
    "https://www.googleapis.com/auth/admin.directory.orgunit",
    "https://www.googleapis.com/auth/admin.directory.user.readonly",
    "https://www.googleapis.com/auth/admin.directory.orgunit.readonly"
  ]
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.61.0"
    }

    google-beta = {
      source  = "hashicorp/google-beta"
      version = "4.61.0"
    }

    googleworkspace = {
      source  = "hashicorp/googleworkspace"
      version = "0.7.0"
    }
  }

  required_version = "~> 1.4.5"

  backend "gcs" {
    bucket = "your-bucket-state"
    prefix = "environments/production/gworkspace"
  }
}
