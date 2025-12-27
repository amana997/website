output "website_url" {
  value = "http://${aws_s3_bucket.website.bucket}.s3-website-${var.aws_region}.amazonaws.com"
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.products.name
}
