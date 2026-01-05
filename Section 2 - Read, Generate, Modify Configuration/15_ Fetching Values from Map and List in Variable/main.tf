resource "aws_instance" "myec2"{
  ami = "ami-123"
  #instance_type = t2.micro
  #instance_type = var.my_list[1] #Fetching my_list[1] m5.xlarge will be fetched
  instance_type = var.my_map["small"] #Fetching my_map[small] -> r5.small will be fetched
}

variable "my_list"{
  default = ["m5.large", "m5.xlarge", "m5.small"]
}

variable "my_map"{
  default = {
    "small": "r5.small",
    "large": "r5.large",
    "xlarge": "r5.xlarge"
  }
}