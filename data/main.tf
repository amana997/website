provider "aws" {
  region = var.region
}

data "aws_s3_bucket" "existing" {
  bucket = var.bucket_name
}

data "aws_dynamodb_table" "existing" {
  name = var.table_name
}
