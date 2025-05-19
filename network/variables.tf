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
  description = "AWS Account ID of the user logged in to the machine that is running terraform."
  nullable    = false
  sensitive   = true
}
variable "region" {
  type        = string
  default     = "eu-central-1"
  description = "Selected region to launch the architecture in. Current selection is eu-central-1 (Frankfurt)."
  nullable    = false
  sensitive   = true
}

variable "assume_role" {
  type        = string
  default     = "Terraform_Network_Role"
  description = "The role to assume in the target account. This role should have permissions to create the resources defined in this module."
  nullable    = false
  sensitive   = true
    validation {
        condition     = can(regex("Terraform_Network_Role", var.assume_role))
        error_message = "The given role name is not accepted. Please use: Terraform_Network_Role."
    }
}

variable "aws_access_key_deployment" {
  type        = string
  description = "User specific access key generated via AWS console on your browser. This access key belongs to the deployment environment. To create one go to: AWS > IAM > Users > (create new or use existing user) > Security Credentials > Access Keys."
  nullable    = false
  sensitive   = true
}
variable "vpc_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = <<EOF
    IP addresses to be launched inside the VPC. Defaults to "10.0.0.0/16".
  EOF
  nullable    = false
  sensitive   = false
}