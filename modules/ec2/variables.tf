variable "ami_id" {
  description = "AMI ID to use for the instances"
  type        = string
}

variable "instance_type" {
  description = "Type of the instance"
  type        = string
}

variable "key_name" {
  description = "Key pair name to use for the instance"
  type        = string
}

variable "nodejs_user_data" {
  description = "User data script for Node.js server"
  type        = string
}

variable "python_user_data" {
  description = "User data script for Python server"
  type        = string
}

variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
}
