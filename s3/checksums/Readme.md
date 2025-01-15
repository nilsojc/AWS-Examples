## Create a new S3 Bucket

```md
aws s3 mb s3://checksums-examples12912-nilso
```

## Create a file that we will do a checksum on

```
echo "Hello Mars" > myfile.txt
```

## Get a Checksum of a file for md5

md5sum myfile.txt
# 8ed2d86f12620cdba4c976ff6651637f  myfile.txt

## Compute our checksum

```
CHECKSUM_SHA1=$(openssl dgst -sha1 -binary myfile.txt | base64)
```

Upload File with Custom Checksum
```
   aws s3api put-object \
       --bucket="checksums-examples12912-nilso" \
       --key="myfilesha1.txt" \
       --body="myfile.txt" \
       --checksum-algorithm="SHA1" \
       --checksum-sha1="$CHECKSUM_SHA1" \
       --metadata ChecksumSHA1="$CHECKSUM_SHA1"
```