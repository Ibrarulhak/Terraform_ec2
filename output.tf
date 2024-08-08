output "instance_public_ip" {
  description = "The public IP address of the EC2 instance."
  value       = aws_instance.ai_app.public_ip
}

