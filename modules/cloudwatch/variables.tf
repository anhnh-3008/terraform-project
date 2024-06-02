variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
}

variable "instance_id" {
  description = "The ID of the EC2 instance to monitor"
  type        = string
}

variable "alarm_sns_topic" {
  description = "SNS topic ARN for CloudWatch alarm"
  type        = string
}
