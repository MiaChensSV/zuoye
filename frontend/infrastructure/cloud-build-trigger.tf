resource "google_cloudbuild_trigger" "build-trigger-test" {
  provider = google
  count = local.is_env_test ? 1 : 0
  name = "${var.product}-${var.component_name}-${var.environment}"

  github {
    owner = var.repository_owner
    name = var.repository_name
    
    push {
      branch = "^main$"
    }
  }

  included_files = ["${var.component_dir}/**"]
  # ignored_files = [
  #   "${var.component_dir}/cloud_build/**", 
  #   "${var.component_dir}/infrastructure/**" 
  # ]

  filename = "${var.component_dir}/cloud_build/cloud-build-${var.environment}.yaml"
}