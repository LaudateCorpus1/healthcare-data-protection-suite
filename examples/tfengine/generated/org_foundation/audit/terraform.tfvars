# Copyright 2021 Google LLC
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

parent_id       = "12345678"
parent_type     = "organization"
auditors_group  = "example-auditors@example.com"
billing_account = "000-000-000"
project = {
  project_id = "example-audit"
}
bigquery_location = "us-east1"
logs_bigquery_dataset = {
  dataset_id = "1yr_org_audit_logs"
  sink_name  = "bigquery-audit-logs-sink"
}
logs_storage_bucket = {
  name      = "7yr-org-audit-logs"
  sink_name = "storage-audit-logs-sink"
}
storage_location = "us-central1"
