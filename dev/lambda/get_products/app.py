import boto3
import json
import os
from decimal import Decimal

dynamodb = boto3.resource("dynamodb")
table = dynamodb.Table(os.environ["TABLE_NAME"])

def decimal_to_number(obj):
    if isinstance(obj, list):
        return [decimal_to_number(i) for i in obj]
    elif isinstance(obj, dict):
        return {k: decimal_to_number(v) for k, v in obj.items()}
    elif isinstance(obj, Decimal):
        return int(obj) if obj % 1 == 0 else float(obj)
    return obj

def lambda_handler(event, context):
    params = event.get("queryStringParameters") or {}
    keyword = params.get("search")

    if keyword:
        response = table.scan(
            FilterExpression="contains(#n, :kw)",
            ExpressionAttributeNames={"#n": "name"},
            ExpressionAttributeValues={":kw": keyword}
        )
    else:
        response = table.scan()

    items = decimal_to_number(response["Items"])

    return {
        "statusCode": 200,
        "headers": {
            "Access-Control-Allow-Origin": "*",
            "Content-Type": "application/json"
        },
        "body": json.dumps(items)
    }
