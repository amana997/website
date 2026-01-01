import json
import os
import urllib.parse
import boto3
import re

s3 = boto3.client("s3")
ddb = boto3.client("dynamodb")

TABLE_NAME = os.environ["TABLE_NAME"]

def lambda_handler(event, context):
    for record in event["Records"]:
        event_name = record["eventName"]
        bucket = record["s3"]["bucket"]["name"]

        key = urllib.parse.unquote_plus(
            record["s3"]["object"]["key"]
        )

        # -----------------------------
        # DELETE from DynamoDB
        # -----------------------------
        if event_name.startswith("ObjectRemoved"):
            ddb.delete_item(
                TableName=TABLE_NAME,
                Key={
                    "product_id": {"S": key}
                }
            )
            continue

        # -----------------------------
        # CREATE / UPDATE
        # -----------------------------
        tags_response = s3.get_object_tagging(
            Bucket=bucket,
            Key=key
        )

        item = {
            "product_id": {"S": key}
        }

        for tag in tags_response.get("TagSet", []):
            safe_key = re.sub(r"[^a-zA-Z0-9_]", "_", tag["Key"])
            item[safe_key] = {"S": tag["Value"]}

        ddb.put_item(
            TableName=TABLE_NAME,
            Item=item
        )

    return {
        "statusCode": 200,
        "body": json.dumps("Processed successfully")
    }
