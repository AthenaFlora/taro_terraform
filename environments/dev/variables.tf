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

# AWS Credentials
variable "account_id" {
  type        = string
  description = "AWS Account ID where the resources will be created."
  nullable    = false
  sensitive   = true
}