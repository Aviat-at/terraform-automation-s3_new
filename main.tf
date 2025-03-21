provider "aws" {
  region = "us-east-1"
}

variable "bucket_prefix" {
  default = "akash-dev-storage"
}

resource "aws_s3_bucket" "buckets" {
  count  = 5
  bucket = "${var.bucket_prefix}-${count.index + 1}"

  tags = {
    Name = "${var.bucket_prefix}-${count.index + 1}"
  }
}
