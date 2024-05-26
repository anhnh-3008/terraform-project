output "autoscaling_group_id" {
  description = "The ID of the Auto Scaling Group"
  value       = aws_autoscaling_group.nodejs_asg.id
}

output "launch_configuration_id" {
  description = "The ID of the Launch Configuration"
  value       = aws_launch_configuration.nodejs_lc.id
}
