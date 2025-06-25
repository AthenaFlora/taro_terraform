variable "vpc_id" {
  type = string
}
variable "db_subnet_group_name" {
  type     = string
  nullable = false
}

variable "rds_security_group_name" {
  type = string
  default = "rds-sg"
}

variable "public_subnet_cidrs" {
    type = list()
}