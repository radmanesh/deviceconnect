/**
 * Copyright 2022 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

output "url" {
    value       = google_cloud_run_service.webapp.status[0].url
    description = "url for the webapp"
}

output "container" {
    value       = "${var.region}-docker.pkg.dev/${var.project_id}/${var.repository_id}/queue-image"
    description = "the webapp container reference"
}