variable "name" {
  type     = string
  default  = "taro-db"
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
  nullable = false
  sensitive = false
}

variable "engine_version" {
  type = string
  default = "15.13"
  nullable = false
  sensitive = false
}

variable "instance_class" {
  type = string
  default = "db.t3.micro"
  nullable = false
  sensitive = false
}

variable "allocated_storage" {
  type = number
  default = 5
  nullable = false
  sensitive = false
}

variable "db_pg_family" {
  type    = string
  default = "postgres15"
  nullable = false
  sensitive = false
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

variable "publicly_accessible" {
  type = bool
  default = false
  nullable = false
  sensitive = false
}
