resource "aws_iam_role" "lambda_role" {
  name = "s3_tag_to_dynamodb_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy" "lambda_policy" {
  role = aws_iam_role.lambda_role.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:PutLogEvents"
        ]
        Resource = "*"
      },
      {
        Effect = "Allow"
        Action = "s3:GetObjectTagging"
        Resource = "arn:aws:s3:::${var.bucket_name}/products/*"
      },
      {
        Effect = "Allow"
        Action = "dynamodb:PutItem"
        Resource = data.aws_dynamodb_table.existing.arn
      }
    ]
  })
}
