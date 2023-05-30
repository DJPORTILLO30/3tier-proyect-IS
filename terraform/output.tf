output "vpc_id" {
  value = aws_vpc.this.id
}

output "s3_id" {
    value = aws_s3_bucket.this.id
}

output "sg-public" {
  value = aws_security_group.public.id
}

output "sg-private" {
  value = aws_security_group.private.id
}

output "sg-alb-public" {
  value = aws_security_group.alb-public-sg.id
}

output "sg-alb-private" {
  value = aws_security_group.alb-private-sg.id
}

output "public-subnet-1" {
  value = aws_subnet.public-subnet-1.id
}

output "public-subnet-2" {
  value = aws_subnet.public-subnet-2.id
}

output "public-private-1" {
  value = aws_subnet.private-subnet-1.id
}
output "public-private-2" {
  value = aws_subnet.private-subnet-2.id
}