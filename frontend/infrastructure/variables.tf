# Project settings
variable "project" {
  type = string
}
variable "product" {
  type = string
}
variable "component_name" {
  type = string
}
variable "environment" {
  type = string
}
variable "tf_state_bucket" {
  type = string
}
variable "location" {
  type = string
}
variable "region" {
  type = string
}
variable "zone" {
  type = string
}

# Terraform setting
variable "terraform_sa" {
  type = string
}

# GitHub repository 
variable "repository" {
  type = string
}
variable "repository_owner" {
  type = string
}
variable "repository_name" {
  type = string
}
variable "component_dir" {
  type = string
}

locals {
  is_env_test = var.environment == "test"
  is_env_prod = var.environment == "prod"
}