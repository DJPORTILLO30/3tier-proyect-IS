resource "aws_security_group" "private" {
  name_prefix = "${local.prefix}-sg-private"
  description = "Private Security Group"
  vpc_id = aws_vpc.this

  ingress{
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_block = [local.vpc.cidr_subnet_public_1,local.vpc.cidr_subnet_public_2]
    }

  ingress{
    from_port = 3000
    to_port = 3000
    protocol = "tcp"
    cidr_block = [aws_security_group]
    }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  depends_on = [
    aws_vpc.this
  ]

}
