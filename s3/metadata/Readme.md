## Create a bucket

aws s3 mb s3://metadata-fun-ab-888-nilso 

### Create a new file

echo "Hello Mars" > hello.txt

## Upload file with metadata 

aws s3api put-object --bucket metadata-fun-ab-888-nilso --key hello.txt --body hello.txt --metadata Planet=Mars