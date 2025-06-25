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
