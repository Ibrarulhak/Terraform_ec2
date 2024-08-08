resource "aws_instance" "ai_app" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  availability_zone           = var.availability_zone
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install -y docker.io
              curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
              chmod +x /usr/local/bin/docker-compose
              systemctl start docker
              systemctl enable docker
              EOF

vpc_security_group_ids = [aws_security_group.aios_app_sg.id]

  subnet_id = var.subnet_id
  key_name = "tf_key"

  tags = {
    Name = "Ai App"
  }

}

