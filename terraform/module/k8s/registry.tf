resource "google_container_registry" "registry" {
  project  = var.project
  location = "US"
}

resource "google_storage_bucket_iam_member" "viewer" {
  bucket = google_container_registry.registry.id
  role               = "roles/iam.workloadIdentityUser"
  member             = "serviceAccount:${lower(var.project)}.svc.id.goog[staging/service-a]"
}