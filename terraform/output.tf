output "vpc_id" {
  value = aws_vpc.this.id
}

output "s3_id" {
    value = aws_s3_bucket.this.id
}