terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
  access_key = "**********"
  secret_key = "**********"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "deshashribucket"

  tags = {
    Name        = "My bucket"

  }
}

resource "aws_s3_bucket_object" "file" {
  bucket = aws_s3_bucket.bucket.id
  key    = "hi.txt"
  source = "C:\Users\dkakade\hi.txt"

}
