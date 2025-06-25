variable "name" {
  type     = string
  nullable = false
}

variable "db_username" {
  type      = string
  sensitive = true
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "engine" {
  type = string
  default = "postgres"
}

variable "engine_version" {
  type = string
  default = "14.1"
}

variable "instance_class" {
  type = string
  default = "db.t3.micro"
}

variable "allocated_storage" {
  type = number
  default = 5
}

variable "db_pg_family" {
  type    = string
  default = "postgres14"
}

variable "db_pg_parameters" {
  type = list(object({
    name  = string
    value = string
  }))
  default = [
    {
      name  = "log_connections"
      value = "1"
    }
  ]
}
