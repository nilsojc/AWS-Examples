## Convert to json


The command

```sh
yq -o json policy.yml > policy.json
```


The bash script

```sh
./convert
```

# Create IAM Policy

```sh
aws iam create-policy \
--policy-name my-fun-policy \
--policy-document file://policy.json
```

# Attach Policy to user

```sh
aws iam attach-user-policy \
--policy-arn arn:aws:iam::137068224350:policy/my-fun-policy" \
--user-name nilsojcaracciolo
```

# Deleting Policies

```sh
aws iam delete-policy-version --policy-arn arn:aws:iam::137068224350:policy/my-fun-policy --version-id v2 
```