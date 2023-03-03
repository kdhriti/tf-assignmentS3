resource "aws_instance" "sg" {
  ami           = "ami-0cca134ec43cf708f"
  instance_type = "t3.micro"
  security_groups = [aws_security_group.dhriti-sg.name] 
  tags = {
    Name = "dEc2"
  }
}

# security group
resource "aws_security_group" "dhriti-sg" {
  name        = "d-security-k"
  description = "security group"
  vpc_id      = "vpc-0db9b000905eaca0e"

dynamic "ingress" {
  for_each = [22,80,443]
  iterator = port
  content {
    description      = "HTTPS"
    from_port        = port.value
    to_port          = port.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]   # any where
    ipv6_cidr_blocks = ["::/0"]
  }
}

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"     # all traffic
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "dhriti-sg"
  }
}
