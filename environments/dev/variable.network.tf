variable "vpc_name" {
  type = string
  default = "my-vpc"
}

variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "database_subnet_group_name" {
  type    = string
  default = "my-db-subnet"
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.101.0/24"]
}
