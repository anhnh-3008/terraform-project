variable "instance_type" {
  description = "Type of the RDS instance"
  type        = string
}

variable "db_name" {
  description = "Database name for RDS"
  type        = string
}

variable "username" {
  description = "Username for RDS MySQL"
  type        = string
}

variable "password" {
  description = "Password for RDS MySQL"
  type        = string
}

variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
}
