variable "aws_access_key" {
  description = "AWS access key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
}

variable "key_name" {
  description = "Name of the key pair to use for EC2 instances"
  type        = string
}

variable "instance_ec2_type" {
  description = "Type of the EC2 instance"
  type        = string
}

variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
}

variable "ami_id" {
  description = "AMI ID to use for the instances"
  type        = string
}

variable "desired_capacity" {
  description = "Desired number of instances in the auto scaling group"
  type        = number
}

variable "max_size" {
  description = "Maximum number of instances in the auto scaling group"
  type        = number
}

variable "min_size" {
  description = "Minimum number of instances in the auto scaling group"
  type        = number
}

variable "subnet_ids" {
  description = "List of VPC subnet IDs"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "db_instance_type" {
  description = "Type of the RDS instance"
  type        = string
}

variable "db_name" {
  description = "Database name for RDS"
  type        = string
}

variable "rds_username" {
  description = "Username for RDS MySQL"
  type        = string
}

variable "rds_password" {
  description = "Password for RDS MySQL"
  type        = string
}
