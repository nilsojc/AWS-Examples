Import-Module AWS.Tools.S3

$region = "us-east-1"

$bucketName = Read-Host -Prompt 'Enter the S3 Bucket name'

Write-Host "AWS Region: $region"
Write-Host "S3 Bcuket: $bucketname"

New-S3Bucket -BucketName $bucketName -Region $region
