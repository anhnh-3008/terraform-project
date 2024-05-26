output "elb_dns_name" {
  description = "The DNS name of the Load Balancer"
  value       = aws_elb.nodejs_elb.dns_name
}

output "elb_name" {
  description = "The name of the Load Balancer"
  value       = aws_elb.nodejs_elb.id
}
