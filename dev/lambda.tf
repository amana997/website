locals {
  lambda_env = {
    TABLE_NAME = var.dynamodb_table_name
  }
}

resource "aws_lambda_function" "get_products" {
  function_name = "get-products"
  role          = aws_iam_role.lambda_role.arn
  handler       = "app.lambda_handler"
  runtime       = "python3.11"

  filename         = "${path.module}/lambda/get_products.zip"
  source_code_hash = filebase64sha256("${path.module}/lambda/get_products.zip")

  environment {
    variables = local.lambda_env
  }
}
