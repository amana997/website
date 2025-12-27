resource "aws_s3_bucket_notification" "notify_lambda" {
  bucket = data.aws_s3_bucket.existing.id

  lambda_function {
    lambda_function_arn = aws_lambda_function.tag_to_dynamodb.arn
    events = [
      "s3:ObjectCreated:*",
      "s3:ObjectTagging:Put"
    ]
  }

  depends_on = [
    aws_lambda_permission.allow_s3
  ]
}
