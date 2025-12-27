const { S3Client, GetObjectTaggingCommand } = require("@aws-sdk/client-s3");
const { DynamoDBClient, PutItemCommand } = require("@aws-sdk/client-dynamodb");

const s3 = new S3Client();
const ddb = new DynamoDBClient();

exports.handler = async (event) => {
  for (const record of event.Records) {
    const bucket = record.s3.bucket.name;
    const key = decodeURIComponent(record.s3.object.key.replace(/\+/g, " "));

    const tagsResponse = await s3.send(
      new GetObjectTaggingCommand({ Bucket: bucket, Key: key })
    );

    const item = {
      product_id: { S: key }
    };

    tagsResponse.TagSet.forEach(tag => {
      // sanitize attribute names for DynamoDB
      const safeKey = tag.Key.replace(/[^a-zA-Z0-9_]/g, "_");
      item[safeKey] = { S: tag.Value };
    });

    await ddb.send(
      new PutItemCommand({
        TableName: process.env.TABLE_NAME,
        Item: item
      })
    );
  }
};
