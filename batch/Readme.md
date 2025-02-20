# Build Image
docker build -t app .

# Register Job

aws batch register-job-definition \
--job-definition-name square-job \
--type container \
--container-properties '{
    "image": "137068224350.dkr.ecr.us-east-1.amazonaws.com/app",
    "vcpus": 1, 
    "memory": 128
}'

https://docs.aws.amazon.com/cli/latest/reference/batch/register-job-definition.html#examples

# Create Compute Env

aws batch create-compute-environment --compute-environment-name my-compute-env \
--type MANAGED \
--compute-resources minvCpus=0,desiredvCpus=1,maxvCpus=1,instanceTypes=m4.16xlarge,subnets=subnet-0ed37fab817d99cf1,securityGroupIds=sg-09cee614ceddece39 \
--service-role arn:aws:iam::137068224350:role/Cloudmart

# Create Queue


aws batch create-job-queue \
--job-queue-name my-job-queue \
--state ENABLED \
--priority 1 \
--compute-environment-order '[
  {
    "order": 1,
    "computeEnvironment": "arn:aws:batch:us-east-1:137068224350:compute-environment/ComputeEnv"
  }
]'

# Submit Job

aws batch submit-job \
    --job-name my-job \
    --job-definition square-job \
    --job-queue my-job-queue