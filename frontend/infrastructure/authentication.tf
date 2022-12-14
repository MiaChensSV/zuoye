provider "google" {
  alias = "tokengen"
  project = var.project
  region = var.region
  zone = var.zone
}
data "google_client_config" "default" {
  provider = google.tokengen
}
data "google_service_account_access_token" "terraform_sa" {
  provider = google.tokengen
  target_service_account = var.tarraform_sa
  lifetime = "600s"
  scopes = [
    "https://www.googleapis.com/auth/cloud-platform",
  ]
}

provider "google" {
  project = var.project
  region = var.region
  zone = var.zone
  access_token = data.google_service_account_access_token.terraform_sa.access_token
} 
provider "google-beta" {
  project = var.project
  region = var.region
  zone = var.zone
  access_token = data.google_service_account_access_token.terraform_sa.access_token
}
