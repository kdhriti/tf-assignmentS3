# for ec2
ec2 = {
  "1" = {
    ami = "ami-006dcf34c09e50022"
    instance_type = "t2.micro"
    tag_name = "d-instance1"
  },

  "2" = {
    ami = "ami-006dcf34c09e50022"
    instance_type = "t2.micro"
    tag_name = "d-instance2"
  }
}

# for s3
bucket_name = "d-bucket"

# for sg
ami = "ami-006dcf34c09e50022"
instance_type = "t2.micro"
tag_name = "d-sg"