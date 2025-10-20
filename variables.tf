variable "aws_region" {
  type = string
  description = "AWS region to launch servers."
}

variable "aws_zone" {
  type = string
  description = "AWS zone to create subnet."
}

variable "admin_user" {
  type = string
  description = "Admin user for the AMI we're launching"
}

variable "admin_key_public" {
  type = string
  description = "Public SSH key of admin user"
}

variable "access_key" {
  type = string
  description = "Access key for AWS"
}

variable "secret_key" {
  type = string
  description = "Secret key for AWS"
}

variable "aws_amis" {
  type = map(string)
  default = {
    ca-central-1 = "ami-01ebef6e00efb2c20"
    us-east-2 = "ami-033adaf0b583374d4"
    us-west-1 = "ami-0bcd12d19d926f8e9"
    us-west-2 = "ami-04f798ca92cc13f74"
    eu-west-1 = "ami-00d464afa64e1fc69"
  }
}

variable "instance_type" {
  type = string
  description = "instance flavor type for EC2"
}
