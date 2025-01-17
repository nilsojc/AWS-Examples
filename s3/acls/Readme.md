## Create a Bucket

```sh
aws s3api create-bucket --bucket acl-example-nj-1234 --region us-east-1
```

## Turn off Block Public Access for ACL's

```sh
aws s3api put-public-access-block \
    --bucket acl-example-nj-1234 \
    --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=true,RestrictPublicBuckets=true"
```

```sh
aws s3api get-public-access-block --bucket acl-example-nj-1234
```

## Change Bucket Ownership

```sh
aws s3api put-bucket-ownership-controls \
--bucket acl-example-nj-1234 \
--ownership-controls="Rules=[{ObjectOwnership=BucketOwnerPreferred}]"
```

## How to Get Owner ID for a specific S3 bucket
```sh
aws s3api list-buckets --query Owner.ID --output text 
```

## Change ACLS's to allow for a user in Another AWS account 

```sh
aws s3api put-bucket-acl \
--bucket acl-example-nj-1234 \
--access-control-policy file:///workspaces/AWS-Examples/s3/acls/policy.json
```

## Uploading an Object from another AWS account example 

```sh
touch bootcamp.txt
aws s3 cp bootcamp.txt s3://acl-example-nj-1234
aws s3 ls s3://acl-example-nj-1234
```

## Cleanup

```sh
aws s3 rm s3://acl-example-nj-1234/bootcamp.txt
aws s3 rb s3://acl-example-nj-1234
```