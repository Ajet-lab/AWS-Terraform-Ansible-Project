output "vpc_id" {
  description = "ID of the project VPC."
  value       = aws_vpc.main.id
}

output "controller_public_ip" {
  description = "Public IPv4 address of the Ansible controller."
  value       = aws_instance.controller.public_ip
}

output "controller_private_ip" {
  description = "Private IPv4 address of the Ansible controller."
  value       = aws_instance.controller.private_ip
}

output "managed_public_ip" {
  description = "Public IPv4 address of the managed node."
  value       = aws_instance.managed.public_ip
}

output "managed_private_ip" {
  description = "Private IPv4 address of the managed node."
  value       = aws_instance.managed.private_ip
}