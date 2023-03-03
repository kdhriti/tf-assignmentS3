variable "ami" {
    type = string
}

variable "instance_type" {
    type = string
}

variable "tag_name" {
    type = string
}

variable "bucket_name" {
    type = string
}

variable "ec2" {
    type = map(any)
}
