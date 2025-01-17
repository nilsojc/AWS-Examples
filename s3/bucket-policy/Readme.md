## Create a Bucket

```sh
aws s3api create-bucket --bucket bucket-policy-example-nj-1234 --region us-east-1
```

## Create Bucket Policy

```sh
aws s3api put-bucket-policy --bucket bucket-policy-example-nj-1234 --policy file://policy.json
```

## In the other accoun access the bucket

touch bootcamp

aws s3 cp bootcamp.txt s3://bucket-policy-example-nj-1234
```sh
aws s3 ls s3://bucket-policy-example-nj-1234
```

## Cleanup

```sh
aws s3 rm s3://bucket-policy-example-nj-1234/bootcamp.txt
aws s3 rb s3://bucket-policy-example-nj-1234
```