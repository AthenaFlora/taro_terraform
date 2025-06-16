# VPC variables
variable "vpc_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = <<EOF
    IP addresses to be launched inside the VPC. Defaults to "10.0.0.0/16".
  EOF
  nullable    = false
  sensitive   = false
}

variable "name" {
  type        = string
  default     = "dev-vpc"
  description = "A name tag for the VPC"
  nullable    = false
  sensitive   = false
}

variable "environment" {
  type        = string
  description = "Environment of the infrastructure. Accepted values are development (default), staging and production."
  nullable    = false
  sensitive   = false
  validation {
    condition     = var.environment == "development" || var.environment == "staging" || var.environment == "production" || can(regex("development-\\w+", var.environment))
    error_message = "The given deployment level is not accepted. Please select either one of the following three: development, staging, production."
  }  
}