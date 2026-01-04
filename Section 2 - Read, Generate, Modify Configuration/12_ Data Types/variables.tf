variable "ami_id"{
    default = "ami-variable-default"
}

variable "instance_type" {
    default = "t2.micro"
    type = string
}

variable "username"{
    type = number
}
