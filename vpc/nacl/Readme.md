## Create NACL 

```sh
aws ec2 create-network-acl --vpc-id vpc-0b81dd25642880562 
```


## Add NACL entry

```sh
aws ec2 create-network-acl-entry \
--network-acl-id acl-0a7fe656539a3575a  \
--ingress \
--rule-number 90 \
--protocol -1 \
--port-range From=0,To=65535 \
--cidr-block 97.68.143.102/32 \
--rule-action deny
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