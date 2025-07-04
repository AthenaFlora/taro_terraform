variable "vpc_name" {
  type    = string
  default = "my-vpc"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "database_subnet_group_name" {
  type    = string
  default = "my-db-subnet"
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24"]
}

variable "database_subnets_cidrs" {
  type    = list(string)
  default = ["10.0.10.0/24", "10.0.11.0/24"]
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.101.0/24"]
}
