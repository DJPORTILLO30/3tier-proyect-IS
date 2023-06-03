resource "aws_security_group" "ec2-mongodb" {
  name        = "${local.prefix}-sg-ec2-mongodb"
  description = "EC2 MongoDB Security Group"
  vpc_id      = aws_vpc.this.id

  ingress {
    from_port   = 27017
    to_port     = 27017
    protocol    = "tcp"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "${local.prefix}-sg-ec2-mongodb"
    Environment = local.env
    Path        = "${basename(abspath(path.module))}/sg-ec2-mongodb.tf"
  }

  depends_on = [aws_vpc.this]
}