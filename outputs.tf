output "nodejs_instance_id" {
  description = "The ID of the Node.js EC2 instance"
  value       = module.ec2.nodejs_instance_id
}

output "python_instance_id" {
  description = "The ID of the Python EC2 instance"
  value       = module.ec2.python_instance_id
}
