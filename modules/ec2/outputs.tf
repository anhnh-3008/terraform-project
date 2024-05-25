output "nodejs_instance_id" {
  description = "The ID of the Node.js EC2 instance"
  value       = aws_instance.nodejs.id
}

output "python_instance_id" {
  description = "The ID of the Python EC2 instance"
  value       = aws_instance.python.id
}
