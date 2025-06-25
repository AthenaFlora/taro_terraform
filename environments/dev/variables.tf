variable "environment" {
  type        = string
  default     = "development"
  description = "Environment of the infrastructure. Accepted values are development (default), staging and production."
  nullable    = false
  sensitive   = false
  validation {
    condition     = var.environment == "development" || var.environment == "staging" || var.environment == "production" || can(regex("development-\\w+", var.environment))
    error_message = "The given deployment level is not accepted. Please select either one of the following three: development, staging, production."
  }
}

variable "region" {
  type = string
  default = "eu-central-1"
  description = "The AWS region where the VPC will be created. Defaults to eu-central-1."
  nullable = false
  sensitive = true
}

# AWS Credentials
variable "account_id" {
  type        = string
  description = "AWS Account ID where the resources will be created."
  nullable    = false
  sensitive   = true
}