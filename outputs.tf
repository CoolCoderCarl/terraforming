output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "public_subnet_id" {
  description = "Public subnets ID"
  value = aws_subnet.public_subnets.id
}

output "private_subnet_id" {
  description = "Private subnets ID"
  value = aws_subnet.private_subnets.id
}

