# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

resource "google_data_loss_prevention_inspect_template" "dlp_pdf_template" {
<<<<<<< HEAD
  parent       = "projects/doug-hill-test/locations/us-central1"
=======
  parent       = "projects/${var.project_id}/locations/us-central1-c"
>>>>>>> 9f5b454f210d81e7e352a40ea0e7de605a16d669
  description  = "PDF Redaction Inspect Template"
  display_name = "pdf_redaction_dlp_template"

  inspect_config {
    info_types {
      name = "EMAIL_ADDRESS"
    }
    info_types {
      name = "PERSON_NAME"
    }
    info_types {
      name = "LAST_NAME"
    }
    info_types {
      name = "PHONE_NUMBER"
    }
    info_types {
      name = "FIRST_NAME"
    }
  }

  depends_on = [
    module.project_services,
  ]
}
