resource "aws_s3_bucket" "this" {
    bucket = "px-${local.prefix}-vpc-flow-log"
    tags = {
      "Name" = "px-${local.prefix}-vpc-flow-log"
      Environment = local.env
      Path        = "${basename(abspath(path.module))}/flow-log.tf"
    }
}