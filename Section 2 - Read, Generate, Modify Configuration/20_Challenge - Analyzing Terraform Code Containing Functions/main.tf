provider "aws" {
  region = var.region
}

variable "region" {
  default = "us-east-1"
}

variable "tags" {
  type = list
  default = ["firstec2","secondec2"]
}

variable "ami" {
  type = map
  default = {
    "us-east-1" = "ami-068c0051b15cdb816"
    "us-west-2" = "ami-0b20a6f09484773af"
    "ap-south-1" = "ami-0e1d06225679bc1c5"
  }
}


resource "aws_instance" "app-dev" {
   ami = lookup(var.ami,var.region)
   instance_type = "t3.micro"
   count = length(var.tags)

   tags = {
     Name = element(var.tags,count.index)
     CreationDate = formatdate("DD MMM YYYY hh:mm ZZZ",timestamp())
   }
}