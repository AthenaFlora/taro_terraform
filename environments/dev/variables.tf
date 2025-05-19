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
  type        = string
  default     = "eu-central-1"
  description = "Selected region to launch the architecture in. Current selection is eu-central-1 (Frankfurt)."
  nullable    = false
  sensitive   = true
}

# AWS Credentials
variable "account_id" {
  type        = string
  description = "AWS Account ID where the resources will be created."
  nullable    = false
  sensitive   = true
}

variable "aws_access_key_deployment" {
  type        = string
  description = "To create one go to: AWS > IAM > Users > (create new or use existing user) > Security Credentials > Access Keys."
  nullable    = false
  sensitive   = true
}

variable "aws_secret_key_deployment" {
  type        = string
  description = "This secret key belongs to the deployment environment. To create one go to: AWS > IAM > Users > (create new or use existing user) > Security Credentials > Access Keys. This will be shown only once, be sure to use it or save it securely!"
  nullable    = false
  sensitive   = true
}