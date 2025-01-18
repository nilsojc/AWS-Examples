### Createn a Bucket

```sh
aws s3 mb s3://encryption-client-nj-1234 
```

### Create a File 

echo "Hello World" > hello.txt
aws s3 cp hello.txt s3://encryption-client-nj-1234

### Run our SDK Ruby script

```sh
bundle exec ruby encrypt.rb
```

### Cleanup

```sh
aws s3 rm s3://encryption-client-nj-1234/hello.txt
aws s3 rb s3://encryption-client-nj-1234
```