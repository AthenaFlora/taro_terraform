variable "subnet_id" {
  description = "The subnet ID to launch the instance in"
  type        = string
  nullable = false
}

variable "ssh_key_name" {
  description = "The name of the SSH key pair"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ami_most_recent" {
  type = bool
  default = true
}

variable "enable_public_ip" {
  type = bool
  default = false
}

variable "security_groups_ids" {
  type = list(string)
}