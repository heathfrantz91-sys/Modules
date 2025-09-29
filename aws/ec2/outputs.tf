output "instance_id" {
  value       = aws_instance.this[*].id
  description = "The EC2 instance ID"
}

output "public_ip" {
  value       = aws_instance.this[*].public_ip
  description = "The public IP of the instance"
}

output "private_ip" {
  value       = aws_instance.this[*].private_ip
  description = "The private IP of the instance"
}
