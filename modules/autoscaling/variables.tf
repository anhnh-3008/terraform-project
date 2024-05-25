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

variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
}

variable "load_balancer" {
  description = "The name of the load balancer to attach to"
  type        = string
}
