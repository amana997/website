resource "aws_lambda_permission" "apigw" {
  for_each = {
    get    = aws_lambda_function.get_products.arn
  }

  statement_id  = "AllowAPIGateway-${each.key}"
  action        = "lambda:InvokeFunction"
  function_name = each.value
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.api.execution_arn}/*/*"
}
