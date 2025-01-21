## Create NACL 

```sh
aws ec2 create-network-acl --vpc-id vpc-0b81dd25642880562 
```

## Get AMI for Amazon Linux 2
Amazon Linux 2023 AMI 2023.3.20240205.2 x86_64 HVM kernel-6.1

Grab the latest AML2 AMI
```sh
aws ec2 describe-images \
--owners amazon \
--filters "Name=name,Values=amzn2-ami-hvm-*-x86_64-gp2" "Name=state,Values=available" \
--query "Images[?starts_with(Name, 'amzn2')]|sort_by(@, &CreationDate)[-1].ImageId" \
--region us-east-1 \
 --output text
```