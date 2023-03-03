output "s3-1" {
    value =  aws_s3_bucket.s3.bucket
}

output "s3-2" {
    value =  aws_s3_bucket.s3.tags
}