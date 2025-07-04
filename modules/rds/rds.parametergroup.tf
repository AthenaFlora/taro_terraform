resource "aws_db_parameter_group" "parameter_group" {
  name   = var.name
  family = var.db_pg_family

  dynamic "parameter" {
    for_each = var.db_pg_parameters
    content {
      name  = parameter.value.name
      value = parameter.value.value
    }
  }
}
