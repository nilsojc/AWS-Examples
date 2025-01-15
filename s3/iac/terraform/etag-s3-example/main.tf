terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.83.1"
    }
  }
}

provider "aws" {
  # Configuration options (such as region, access key, etc.)
}

resource "aws_s3_bucket" "default" {
  bucket = "terraform-2418418532-nilso"  # Replace with your desired bucket name
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.default.bucket  # Reference the bucket resource properly
  key    = "myfile.txt"
  source = "myfile.txt"

  etag =filemd5("myfile.txt")
}
