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

## Upload our s3 file

