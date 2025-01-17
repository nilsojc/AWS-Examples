## Create a Bucket

```sh
aws s3 mb s3://encryption-fun-nj-1234
```

### Create a File to puy encryption of SSE-KMS

```sh
echo "Hello World" hello.txt
```sh
aws s3 cp hello.txt s3://encryption-fun-nj-1234
```

### Put Object with Encryption of KMS

```sh
aws s3api put-object \
--bucket encryption-fun-nj-1234 \
--key hello.txt \
--body hello.txt \
--server-side-encryption "aws:kms" \
--ssekms-key-id "29a24676-3987-4563-954d-94cce9907ed4"
```

### Put Object with SSE-C [Failed Attempt]

```sh
export BASE64_ENCODED_KEY=$(openssl rand -base64 32)

echo $BASE64_ENCODED_KEY

export MD5_VALUE=$(echo $BASE64_ENCODED_KEY | base64 --decode | md5sum | awk '{print $1}' | base64 -w0)
echo $MD5_VALUE

aws s3api put-object \
--bucket encryption-fun-nj-1234 \
--key hello.txt \
--body hello.txt \
--sse-customer-algorithm AES256
--sse-customer-key $BASE64_ENCODED_KEY \
--sse-customer-key-md5 $MD5_VALUE
```

### Put Object with SSE-C via aws s3 

```sh
openssl rand -out ssec.key 32

aws s3 cp hello.txt s3://encryption-fun-nj-1234/hello.txt hello.txt
--sse-c AES256 \
--sse-c-key fileb://ssec.key
```