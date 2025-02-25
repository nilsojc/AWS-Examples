## Create Bucket

aws s3 mb s3://sf-star-trek-131241 --region us-east-1

## Enable EventBridge Communication 

```sh
aws s3api put-bucket-notification-configuration \
--region us-east-1 \
--bucket sf-star-trek-8888 \
--notification-configuration '
{
  "EventBridgeConfiguration": {
  }
}'
```
## Upload Files

```sh
aws s3 cp picard.jpg s3://sf-star-trek-8888/picard.jpg --region us-east-1
```

## Cleanup

aws s3 rm s3://sf-star-trek-8888/picard.jpg --region us-east-1 
aws s3 rb s3://sf-star-trek-8888 --region us-east-1 