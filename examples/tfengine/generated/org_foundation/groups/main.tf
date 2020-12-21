# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

terraform {
  required_version = ">=0.13"
  required_providers {
    google      = "~> 3.0"
    google-beta = "~> 3.0"
  }
  backend "gcs" {
    bucket = "example-terraform-state"
    prefix = "groups"
  }
}

# Required when using end-user ADCs (Application Default Credentials) to manage Cloud Identity groups and memberships.
provider "google-beta" {
  user_project_override = true
  billing_project       = "example-devops"
}

module "example_auditors_example_com" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.1"

  id          = "example-auditors@example.com"
  customer_id = "c12345678"
  owners      = ["user1@example.com"]
  members     = ["user2@example.com"]
}

module "example_cicd_viewers_example_com" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.1"

  id          = "example-cicd-viewers@example.com"
  customer_id = "c12345678"
}

module "example_cicd_editors_example_com" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.1"

  id          = "example-cicd-editors@example.com"
  customer_id = "c12345678"
}