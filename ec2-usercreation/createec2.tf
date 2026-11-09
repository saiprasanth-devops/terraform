resource "aws_instance" "example" {
  ami           = var.ami_details
  instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.web_sg.id] 

  tags = var.tagName
  
}

# 1. Define the Security Group
resource "aws_security_group" "web_sg" {
  name        = "web-server-sg"
  description = "Allow HTTP traffic"
 # vpc_id      = "vpc-12345678" # Replace with your VPC ID

  ingress {
    from_port   = var.frontendports
    to_port     = var.frontendports
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }
ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
      }
}





